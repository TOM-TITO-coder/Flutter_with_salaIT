import 'package:flutter_getx_for_beginner/app/modules/products/controllers/product_controller.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class ProductView extends StatelessWidget {
  ProductView({super.key});

  final controller = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Products"),
        actions: [
          IconButton(
            onPressed: controller.logout, // use ask callback, can be use because it doesn't have argument
            icon: const Icon(
              Icons.logout_outlined,
              color: Colors.red,
            ),
          ),
          IconButton(
            // onPressed: () {
            //   Get.changeTheme(
            //     Get.isDarkMode ? ThemeData.light() : ThemeData.dark(),
            //   );
            // },
            onPressed: controller.toggleTheme,
            icon: const Icon(Icons.wb_sunny_outlined, color: Colors.grey,),
          ),
        ],
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
