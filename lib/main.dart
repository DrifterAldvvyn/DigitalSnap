import 'package:flutter/material.dart';
import 'package:digital_snap/page/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Futura',
        brightness: Brightness.light,
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: {
            // Set the predictive back transitions for Android.
            TargetPlatform.android: PredictiveBackPageTransitionsBuilder(),
          },
        ),
      ),
      home: Homepage(),
    );
  }
}