import 'package:get/get.dart';

import '../api_services/api_service.dart';

import 'package:mobile_computing/models/product_model.dart';
import 'package:mobile_computing/models/user_model.dart';

class ApiController extends GetxController {
  ApiService apiServices = ApiService();

  List<ProductModel> products = [];
  List<UserModel> users = [];

  @override
  void onInit() {
    super.onInit();
    getProducts();
  }

  Future<void> getProducts() async {
    final response = await apiServices.Products();

    products = (response.data['products'] as List)
        .map((e) => ProductModel.fromJson(e))
        .toList();

    update();
  }

  Future<void> getUsers() async {
    final response = await apiServices.Users();

    users = (response.data['users'] as List)
        .map((e) => UserModel.fromJson(e))
        .toList();

    update();
  }
}
