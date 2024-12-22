import 'package:flutter/material.dart';
import '../EXERCISE-3/screen/welcome.dart';
import '../EXERCISE-3/screen/temperature.dart';

class TemperatureApp extends StatefulWidget {
  const TemperatureApp({super.key});

  @override
  State<TemperatureApp> createState() => _TemperatureAppState();
}

class _TemperatureAppState extends State<TemperatureApp> {
  bool isWelcomeScreen = true; // State to track which screen to show

  void switchScreen() {
    setState(() {
      isWelcomeScreen = false; // Update to show the Temperature screen
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xff16C062),
                Color(0xff00BCDC),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: isWelcomeScreen
              ? Welcome(onStart: switchScreen) // Pass the switchScreen method
              :  Temperature(),         // Show the Temperature screen
        ),
      ),
    );
  }
}

void main() {
  runApp(const TemperatureApp());
}
