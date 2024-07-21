import 'package:get/get.dart';

import '../controllers/listdetail_controller.dart';

class ListdetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ListdetailController>(
      () => ListdetailController(),
    );
  }
}
