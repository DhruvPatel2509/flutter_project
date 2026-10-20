import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_computing/screens/products_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mobile Computing',
      home: const ProductsScreen(),
    );
  }
}
