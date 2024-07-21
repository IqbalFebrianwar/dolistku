import 'package:dolistku/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:localstorage/localstorage.dart';

class HomeController extends GetxController {

  @override
  void onReady(){
    super.onReady();
    final userId = localStorage.getItem("userId");
    if(userId == null){
      Get.offAllNamed(Routes.SIGNIN);
    }
  }

  void onSigin(){
    Get.toNamed(Routes.SIGNIN);
  }
  void onAddList(){
    Get.offNamed(Routes.ADDLIST);
  }
}
