import 'package:flutter/material.dart';
import 'package:flutter_getx_for_beginner/app/modules/auth/views/login_view.dart';
import 'package:flutter_getx_for_beginner/app/modules/products/views/product_view.dart';
import 'package:flutter_getx_for_beginner/app/modules/settings/views/setting_view.dart';
import 'package:flutter_getx_for_beginner/app/translations/app_translation.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: AppTranslation(),
      locale: Locale('en', 'US'),
      fallbackLocale: Locale('kh', 'KM'),
      initialRoute: "/settings",
      getPages: [
        GetPage(name: "/login", page: () => LoginView()),
        GetPage(name: "/product", page: () => ProductView()),
        GetPage(name: "/settings", page: () => SettingView()),
      ],
    );
  }
}
