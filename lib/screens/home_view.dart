import 'package:flutter/material.dart';
import 'package:flutter_getx_for_beginner/controllers/home_controller.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  // injection controller
  final homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("You push this button many times"),
            Obx(
              () => Text(
                "${homeController.counter}",
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          homeController.increment();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
