import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:weather/light_dark_mode.dart';
import 'package:weather/screens/weather_screen.dart';

void main() {
  return runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.black54),
    );
    return ValueListenableBuilder(
        valueListenable: isDarkModeNotifier,
        builder: (context, isDark, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              brightness: isDark ? Brightness.dark : Brightness.light,
            ),
            home: const WeatherScreen(),
          );
        });
  }
}
