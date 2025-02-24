import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'package:device_preview/device_preview.dart';



void main() => runApp(
  DevicePreview(
    enabled: true,
    builder: (context) => RechargeScreen(),
  ),
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RechargeScreen(),
    );
  }
}
