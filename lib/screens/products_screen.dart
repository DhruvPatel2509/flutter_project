import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_computing/controllers/api_controller.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Products")),
      body: GetBuilder<ApiController>(
        init: ApiController(),
        builder: (controller) {
          if (controller.products.isEmpty) {
            return const Center(child: CircularProgressIndicator());
          }

          return ListView.builder(
            itemCount: controller.products.length,
            itemBuilder: (context, index) {
              return Text("Product");
            },
          );
        },
      ),
    );
  }
}
