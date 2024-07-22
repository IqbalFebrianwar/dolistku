import 'package:dolistku/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:localstorage/localstorage.dart';
import 'package:dolistku/app/realm/schema.dart' as schema;

class ProfileController extends GetxController {
  Rx<schema.User> args = Get.arguments;

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  void onlogout(){
    localStorage.clear();
    Get.offAllNamed(Routes.SIGNIN);
  }
  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
