import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Setting".tr),
      ),
      body: Column(
        children: [
          ListTile(
            onTap: () {
              Get.bottomSheet(
                Container(
                  width: Get.width,
                  decoration: BoxDecoration(color: Colors.white),
                  child: Column(
                    children: [
                      TextButton(
                        onPressed: () {
                          var locale = Locale('en', 'US');
                          Get.updateLocale(locale);
                          Get.back();
                        },
                        child: Text("English".tr),
                      ),
                      TextButton(
                        onPressed: () {
                          var locale = Locale('kh', 'KM');
                          Get.updateLocale(locale);
                          Get.back();
                        },
                        child: Text("Khmer".tr),
                      ),
                    ],
                  ),
                ),
              );
            },
            leading: Icon(Icons.language),
            title: Text("English".tr),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            onTap: () {
              Get.bottomSheet(
                Container(
                  width: Get.width,
                  decoration: BoxDecoration(color: Colors.white),
                  child: Column(
                    children: [
                      TextButton(
                        onPressed: () {
                          var locale = Locale('en', 'US');
                          Get.updateLocale(locale);
                          Get.back();
                        },
                        child: Text("English".tr),
                      ),
                      TextButton(
                        onPressed: () {
                          var locale = Locale('kh', 'KM');
                          Get.updateLocale(locale);
                          Get.back();
                        },
                        child: Text("Khmer".tr),
                      ),
                    ],
                  ),
                ),
              );
            },
            leading: Icon(Icons.sunny),
            title: Text("Theme".tr),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
        ],
      ),
    );
  }
}
