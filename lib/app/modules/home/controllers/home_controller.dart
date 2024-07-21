import 'package:dolistku/app/routes/app_pages.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  void onReady(){
    if(_auth.currentUser == null){
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
