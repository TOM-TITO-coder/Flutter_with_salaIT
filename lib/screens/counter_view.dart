import 'package:flutter/material.dart';
import 'package:flutter_getx_for_beginner/controllers/counter_controller.dart';
import 'package:flutter_getx_for_beginner/controllers/home_controller.dart';
import 'package:get/get.dart';

class CounterView extends StatelessWidget {
  CounterView({super.key});

  // injection controller
  //final homeController = Get.put(HomeController());

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
            GetBuilder<CounterController>(
              init: CounterController(),
              builder: (controller){
                return Text("${controller.count}");
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.find<CounterController>().increment();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
