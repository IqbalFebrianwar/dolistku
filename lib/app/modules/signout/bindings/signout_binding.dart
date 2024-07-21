import 'package:get/get.dart';

import '../controllers/signout_controller.dart';

class SignoutBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignoutController>(
      () => SignoutController(),
    );
  }
}
