import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const TemperatureConverter(),
    );
  }
}

class TemperatureConverter extends StatefulWidget {
  const TemperatureConverter({super.key});

  @override
  _TemperatureConverterState createState() => _TemperatureConverterState();
}

class _TemperatureConverterState extends State<TemperatureConverter> {
  // State to store the input temperature and the converted result
  String celsiusInput = "";
  String fahrenheitOutput = "0";

  // Function to convert Celsius to Fahrenheit
  void convertTemperature(String value) {
    try {
      final celsius = double.parse(value);
      final fahrenheit = (celsius * 9 / 5) + 32;
      setState(() {
        fahrenheitOutput = fahrenheit.toStringAsFixed(2); // Round to 2 decimals
      });
    } catch (e) {
      setState(() {
        fahrenheitOutput = "Invalid Input";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Thermometer Icon
              const Icon(Icons.thermostat, size: 100, color: Colors.white),

              const SizedBox(height: 16),

              // Title
              const Text(
                'Converter',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),

              const SizedBox(height: 40),

              // Input Label
              const Text(
                'Temperature in Degrees:',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),

              const SizedBox(height: 8),

              // Input Field
              TextField(
                onChanged: (value) {
                  celsiusInput = value;
                  convertTemperature(value);
                },
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Enter a temperature',
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),

              const SizedBox(height: 40),

              // Output Label
              const Text(
                'Temperature in Fahrenheit:',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),

              const SizedBox(height: 8),

              // Output Display
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  fahrenheitOutput,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
