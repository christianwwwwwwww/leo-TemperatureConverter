// The 'temperatureconverter' program.
program temperatureconverter.aleo {

    struct Conversion {
        initial_value: i64,
        direction: u8    // 1 for C to F, 2 for F to C, 3 for C to K, 4 for K to C, 5 for F to K, 6 for K to F
    }

    transition convert(temp: Conversion) -> i64 {
        // Convert Celsius to Fahrenheit
        if temp.direction == 1u8 {
            return ((((temp.initial_value * 1000i64) * 9000i64) / 5000i64) + 32000i64) / 1000i64;
        }

        // Convert Fahrenheit to Celsius
        if temp.direction == 2u8 {
            return ((((temp.initial_value * 1000i64) - 32000i64) * 5000i64) / 9000i64)  / 1000i64;
        }

        // Convert Celsius to Kelvin
        if temp.direction == 3u8 {
            return ((temp.initial_value * 1000i64) + 273150i64) / 1000i64;
        }

        // Convert Kelvin to Celsius
        if temp.direction == 4u8 {
            return ((temp.initial_value * 1000i64) - 273150i64) / 1000i64;
        }

        // Convert Fahrenheit to Kelvin
        if temp.direction == 5u8 {
            return ((((temp.initial_value * 1000i64) - 32000i64) * 5000i64) / 9000i64 + 273150i64) / 1000i64;
        }

        // Convert Kelvin to Fahrenheit
        if temp.direction == 6u8 {
            return ((((temp.initial_value * 1000i64) - 273150i64) * 9000i64) / 5000i64 + 32000i64) / 1000i64;
        }

        // Fallback case (invalid direction)
        return 0i64;
    }
}
