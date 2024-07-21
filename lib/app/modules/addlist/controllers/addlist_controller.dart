import 'package:dolistku/app/routes/app_pages.dart';
import 'package:get/get.dart';

class AddlistController extends GetxController {
  
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void onHome(){
    Get.offNamed(Routes.HOME);
  }

  void increment() => count.value++;
}
