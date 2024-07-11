import 'package:flutter/material.dart';
import 'package:flutter_getx_for_beginner/app/module/products/views/product_view.dart';
import 'package:get/get.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductView(),
    );
  }
}
