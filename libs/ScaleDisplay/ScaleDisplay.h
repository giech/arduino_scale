/*
 * Author: Ilias Giechaskiel
 * Website: https://ilias.giechaskiel.com
 * Description: Helper library that extends LedControl to display
 * and flash string and float values to Seven Segment Displays
 *
 */

#include <LedControl.h>

class ScaleDisplay : public LedControl {
  private:
    const int display;   // For chained displays
    const int num_seg;   // Number of segments used
    const int first_seg; // Index of first segment
    const int intensity; // Intensity of displays
    int max_val;         // Max value that can be displayed
    int min_val;         // Min value that can be displayed
    char buf[30];        // Buffer for characters to be displayed

    // Function that tells us whether the value can be represented on the display
    bool is_value_ok(float value);

    // Helper function that stores value with num_dec decimals in the
    // buffer (or an error string if it cannot be represented)
    void parse_value(float value, int num_dec);

  public:
    // Constructor. mosi, sck and cs/load correspond to pin numbers for the display
    // Default parameters: display index, number of segments, index of first segment
    // and Led intensity
    ScaleDisplay(int mosi, int sck, int cs, int display = 0,
                 int num_seg = 4, int first_seg = 0, int intensity = 8);

    // Function that starts the display, sets the intensity and clears the screen
    void reset();

    // Function that displays the given value with num_decimals after decimal point
    void display_value(float value, int num_decimals = 1);
    
    // Function that displays the given message
    void display_message(const char* msg);

    // Function that flashes the given value with num_decimals the times given by the
    // parameter, with the given delay between flashes in milliseconds.
    void flash_value(float value, int num_decimals = 1, int times = 3, 
                     int delay = 150);

    // Function that flashes the given message, as many times as indicated with the
    // given delay between flashes in milliseconds
    void flash_message(const char* msg, int times = 3, int delay = 150);
};
