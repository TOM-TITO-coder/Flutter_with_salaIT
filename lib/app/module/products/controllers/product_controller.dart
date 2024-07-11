import 'dart:convert';

import 'package:flutter_getx_for_beginner/app/constants/constants.dart';
import 'package:flutter_getx_for_beginner/app/models/product.model.dart';

//Library
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ProductController extends GetxController{
  // get product as json from url

  List<Product> lstProducts = [];
  var isLoading = false;
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

    if (res.statusCode == 200){
      // success with data || success with empty data
      print("${res.body}");
      List products = jsonDecode(res.body);
      lstProducts = products.map((e) => Product.fromJson(e)).toList();
      isLoading = false;
      update(); // to refresh th UI
    }else{
      // do sth deal with error
    }
  }
}