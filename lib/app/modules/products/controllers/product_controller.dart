import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_getx_for_beginner/app/constants/constants.dart';
import 'package:flutter_getx_for_beginner/app/models/product.model.dart';

//Library
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;

class ProductController extends GetxController {
  // get product as json from url

  List<Product> lstProducts = [];
  var isLoading = false;
  var box = GetStorage();

  // initState | for what , execute before build UI
  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    isLoading = true;
    update();
    final url = Uri.parse(kProductUrl);
    final res = await http.get(url);

    if (res.statusCode == 200) {
      // success with data || success with empty data
      print("${res.body}");
      List products = jsonDecode(res.body);
      lstProducts = products.map((e) => Product.fromJson(e)).toList();
      isLoading = false;
      update(); // to refresh th UI
    } else {
      // do sth deal with error
    }
  }

  // implement a method for logout user
  void logout() {
    box.remove('token'); // clear from storage of device
    // back to login
    Get.offNamed('/login');
  }

  // change theme
  void toggleTheme(){
    Get.changeTheme(Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
  }
}
