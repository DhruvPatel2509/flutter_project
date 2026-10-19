// import 'package:flutter/material.dart';

// import '../api_services/api_service.dart';

// class ProductsScreen extends StatelessWidget {
//   const ProductsScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Products")),
//       body: FutureBuilder(
//         future: ApiServices().getApi('https://dummyjson.com/products'),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return const Center(child: CircularProgressIndicator());
//           }

//           if (snapshot.hasError) {
//             return const Center(child: Text("Something went wrong"));
//           }

//           final products = snapshot.data?.data['products'];

//           return ListView.builder(
//             itemCount: products.length,
//             itemBuilder: (context, index) {
//               return ListTile(
//                 title: Text(products[index]['title']),
//                 subtitle: Text('\$${products[index]['price']}'),
//               );
//             },
//           );
//         },
//       ),
//     );
//   }
// }
