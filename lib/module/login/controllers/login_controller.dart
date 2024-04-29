import 'package:basicgetx/routes/app_pages.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final RxString username = ''.obs;
  final RxString password = ''.obs;

  void setValueUsername(String val) {
    username.value = val;
  }

  void setValuePassword(String val) {
    password.value = val;
  }

  void login() {
    if (username.value == 'admin' && password.value == 'admin') {
      Get.offAllNamed(Routes.HOME);
    } else {
      Get.snackbar('Error', 'Wrong username or password');
    }
  }
}
