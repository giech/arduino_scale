/*
 * Author: Ilias Giechaskiel
 * Website: https://ilias.giechaskiel.com
 * Description: Implementation of helper library that extends LedControl to display
 * and flash string and float values to Seven Segment Displays
 *
 */

#include "ScaleDisplay.h"

ScaleDisplay::ScaleDisplay(int mosi, int sck, int cs, int display,
                           int num_seg, int first_seg, int intensity) :
  LedControl(mosi, sck, cs), display(display),
  num_seg(num_seg), first_seg(first_seg),
  intensity(intensity) {
  int max = 1;
  for (int i = 0; i < num_seg; ++i) {
    max *= 10;
  }

  // Max and min values that can be represented (exclusive)
  max_val = max;
  min_val = -max / 10;
}

bool ScaleDisplay::is_value_ok(float value) {
  return value > min_val && value < max_val;
}

void ScaleDisplay::parse_value(float value, int num_decimals) {
  if (ScaleDisplay::is_value_ok(value)) {
    // This stores the float as a string, with the given number of decimals
    dtostrf(value, sizeof(buf), num_decimals, buf);
  } else {
    // Else, store an error message
    strncpy(buf, "ERR", sizeof(buf));
  }
}

void ScaleDisplay::reset() {
  LedControl::shutdown(display, false);
  LedControl::setIntensity(display, intensity);
  LedControl::clearDisplay(display);
}

void ScaleDisplay::display_value(float value, int num_decimals) {
  // Parse the value, and if OK display, otherwise flash the error message
  ScaleDisplay::parse_value(value, num_decimals);
  if (ScaleDisplay::is_value_ok(value)) {
    ScaleDisplay::display_message(buf);
  } else {
    ScaleDisplay::flash_message(buf);
  }
}

void ScaleDisplay::display_message(const char* msg) {
  LedControl::clearDisplay(display); // Need to remove what is there already

  int written = 0; // Number of characters written to display
  bool dot = false; // Whether we need a dot
  int length = strlen(msg); // Length of message
  int start = first_seg + num_seg - 1; // Write from back

  for (int i = length - 1; i >= 0; --i) {
    if (msg[i] == '.') {
      // Note the dot to include in the next character to write
      dot = true;
      continue;
    }

    LedControl::setChar(display, start - written, msg[i], dot);

    written += 1;
    dot = false;

    // Don't overflow!
    if (written == num_seg) {
      break;
    }
  }

  // In case we start with a dot and have spaces left-over
  if (dot && written < num_seg) {
    LedControl::setChar(display, start - written, ' ', true);
  }
}

void ScaleDisplay::flash_value(float value, int num_decimals, int times, int del) {
  ScaleDisplay::parse_value(value, num_decimals);
  ScaleDisplay::flash_message(buf, times, del);
}

void ScaleDisplay::flash_message(const char* msg, int times, int del) {
  for (int i = 0; i < times; ++i) {
    ScaleDisplay::display_message(msg);
    delay(del);
    LedControl::clearDisplay(display);
    delay(del);
  }
}

