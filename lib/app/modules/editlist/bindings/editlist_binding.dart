import 'package:get/get.dart';

import '../controllers/editlist_controller.dart';

class EditlistBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EditlistController>(
      () => EditlistController(),
    );
  }
}
