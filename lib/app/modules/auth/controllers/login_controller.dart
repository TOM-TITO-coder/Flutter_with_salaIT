import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginController extends GetxController {
  // get storage
  final box = GetStorage();

  @override
  void onInit() {
    // TODO: implement onInit

    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    isAuthenticated();
    super.onReady();
  }

  // check is authenticated (if user logged)
  void isAuthenticated() {
    final token = box.read('token');
    if (token != null) {
      // navigate to product screen
      Get.offNamed("/product");
    }
  }

  // do login
  void login() {
    // 1. store data to storage
    // 2. got to product screen
    box.write('token', 'dfeoodghfefioefojdf');
    Get.offNamed("/product");
  }
}
