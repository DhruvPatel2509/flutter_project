import 'package:flutter/material.dart';
import 'package:mobile_computing/screens/login_screen.dart';
import 'package:mobile_computing/screens/registration_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mobile Computing',
      home: RegistrationScreen(),
    );
  }
}
