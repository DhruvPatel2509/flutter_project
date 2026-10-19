// import 'dart:convert';

// import 'package:http/http.dart' as http;

// class ApiService {
//   static const String productsUrl = 'https://dummyjson.com/products';

//   static const String usersUrl = 'https://dummyjson.com/users';

//   Future<List<dynamic>> getProducts() async {
//     final response = await http.get(Uri.parse(productsUrl));
//     if (response.statusCode == 200) {
//       final data = jsonDecode(response.body);
//       return data['products'];
//     } else {
//       throw Exception('Failed to load products');
//     }
//   }
// }

import 'package:dio/dio.dart';

class ApiService {
  Dio dio = Dio();
  Future<Response> Products() async {
    try {
      final response = await dio.get("https://dummyjson.com/products");
      if (response.statusCode == 200) {
        return response;
      } else {
        throw Exception('Error');
      }
    } catch (e) {
      print(e);
      throw Exception("Something went wrong");
    }
  }

  Future<Response> Users() async {
    try {
      final response = await dio.get("https://dummyjson.com/users");

      if (response.statusCode == 200) {
        return response;
      } else {
        throw Exception("Error");
      }
    } catch (e) {
      print(e);
      throw Exception("Something went wrong");
    }
  }
}
