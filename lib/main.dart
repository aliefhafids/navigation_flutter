import 'package:flutter/material.dart';
import 'screens/navigate_routed_screen.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Named Routes Demo',
      initialRoute: '/',
      routes: {
        '/': (context) =>
          const FirstScreen(),
            '/second': (context) =>
            const SecondScreen(),
      },
    ),
  );
}