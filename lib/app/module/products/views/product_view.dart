import 'package:flutter/material.dart';
import 'package:flutter_getx_for_beginner/app/module/products/controllers/product_controller.dart';
import 'package:get/get.dart';

class ProductView extends StatelessWidget {
  ProductView({super.key});

  final controller = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Products"),
      ),
      body: GetBuilder<ProductController>(
        builder: (_) {
          if (controller.isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return ListView.builder(
            itemCount: controller.lstProducts.length,
            itemBuilder: (context, index) {
              final product = controller.lstProducts[index];
              return ListTile(
                title: Text("${product.title}"),
                subtitle: Text("\$ ${product.price}"),
                trailing: Image.network(product.category!.image!),
              );
            },
          );
        },
      ),
    );
  }
}
