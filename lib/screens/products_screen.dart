import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/api_controller.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Products")),
      body: GetBuilder<ApiController>(
        init: ApiController(),
        initState: (state) {
          state.controller?.getProducts();
        },
        
        builder: (controller) {
          if (controller.products.isEmpty) {
            return const Center(child: CircularProgressIndicator());
          }

          return ListView.builder(
            itemCount: controller.products.length,
            itemBuilder: (context, index) {
              final product = controller.products[index];

              return Card(
                margin: const EdgeInsets.all(10),
                child: ListTile(
                  leading: Image.network(
                    product.thumbnail ?? "",
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                  ),
                  title: Text(product.title ?? ""),
                  subtitle: Text("\$${product.price}"),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
