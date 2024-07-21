import 'package:get/get.dart';

import '../controllers/addlist_controller.dart';

class AddlistBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddlistController>(
      () => AddlistController(),
    );
  }
}
