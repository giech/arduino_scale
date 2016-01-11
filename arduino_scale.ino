/*
 * Author: Ilias Giechaskiel
 * Website: https://ilias.giechaskiel.com
 * Description: Code for a digital scale with auto-reset, seven-segment displays
 * and the HX711 ADC converter on an ATtiny85
 *
 */


/* LIBRARY INCLUDES */
// LedControl is necessary before ScaleDisplay due to the way the Arduino IDE works
#include <HX711.h>
#include <LedControl.h>
#include <ScaleDisplay.h>

/* GLOBAL DEFINES */

// Uncomment this if you have set the fuses such that the RESET pin can be used for I/O
//#define ENABLE_TARE_PIN
// Pin used for zero-ing the scale (removing the tare weight from the gross weight)
#define TARE_PIN PB5

// Pin used to control power output
#define POWER_PIN PB3

// Number of readings to average weight calculations
#define AV_NUM_READS 5

// Readings are considered stable after this many milliseconds, if they don't
// deviate from average by the given threshold in KG
#define STABLE_TIME_MS 5000
#define THRESHOLD 0.15

// Delay between powering up HX711 module and doing readings
#define HX711_POWER_UP_DELAY 300

// Delay needed for considering a button pressed
#define BUTTON_PRESS_DELAY 100

// Delay after which you timeout if HX711 has not responded
#define TIMEOUT_DELAY 1000

// Scale-specific number (see https://github.com/bogde/HX711 for details)
#define SCALING 23388.19

/* GLOBAL VARIABLES */

// Interface to the ADC converter and the display
HX711 scale(PB1, PB2); // MISO, SCK
ScaleDisplay display(PB0, PB2, PB4); // MOSI, SCK, CS

// Parameters for averaging
int num_read; // Number of values read within threshold
float sum_read; // Sum of values read within threshold
long first_read_time; // Time of first read within threshold

// Standard Arduino setup function
void setup() {
#ifdef ENABLE_TARE_PIN
  pinMode(TARE_PIN, INPUT_PULLUP);
#endif

  pinMode(POWER_PIN, OUTPUT);
  digitalWrite(POWER_PIN, HIGH);
  reset_scale("ON");
}

// Standard Arduino loop function
void loop() {
  // If no/short presses, handle readings, else zero the scale
  long press_time = get_button_time();
  if (press_time < BUTTON_PRESS_DELAY) {
    handle_scale_readings();
  } else {
    reset_scale("RST");
  }
}

// Function that tells us how long the button is being preseed (if applicable)
long get_button_time() {
#ifdef ENABLE_TARE_PIN
  long start = millis();
  // Break out early if possible
  while (digitalRead(TARE_PIN) == LOW && (millis() - start) <= BUTTON_PRESS_DELAY) {}
  return millis() - start;
#else
  return 0;
#endif
}

// Function that reads and displays scale readings
void handle_scale_readings() {
  // If cannot make reading from scale, timeout, display error, and turn off
  long start = millis();
  while (!scale.is_ready() && (millis() - start) < TIMEOUT_DELAY) {}
  if (!scale.is_ready()) {
    display.flash_message("ERR");
    digitalWrite(POWER_PIN, LOW);
  }

  float cur_read = scale.get_units(AV_NUM_READS);

  // If read is within average as difference (could also do as percentage)
  if (abs(sum_read / num_read - cur_read) <= THRESHOLD) {
    num_read += 1;
    sum_read += cur_read;

    // If has been stable for long enough, flash the value and turn off
    if ((millis() - first_read_time) >= STABLE_TIME_MS) {
      display.flash_value(cur_read);
      digitalWrite(POWER_PIN, LOW);
    }
  } else {
    // Not stable. Reset
    num_read = 1;
    sum_read = cur_read;
    first_read_time = millis();
  }

  // Because HX711 is not proper SPI and it shares the CLK with the
  // display, we power it down before we display the value
  // Before powering it back on with small delay
  scale.power_down();
  display.display_value(cur_read);
  delay(HX711_POWER_UP_DELAY);
  scale.power_up();
}

// Function that zeroes the scale, flashing the message if needed
void reset_scale(const char* msg) {
  // Set the scaling factor and power down the scale (due to SPI conflict)
  scale.set_scale(SCALING);
  scale.power_down();

  // Display message if needed, otherwise have a small delay to ensure
  // scale can power-up correctly
  if (msg) {
    display.reset();
    display.flash_message(msg);
  } else {
    delay(HX711_POWER_UP_DELAY);
  }

  // Power up, and zero-scale
  scale.power_up();
  scale.tare();

  // Reset stability measurements
  sum_read = 0;
  num_read = 1;
  first_read_time = millis();
}

