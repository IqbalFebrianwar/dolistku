import 'package:dolistku/app/routes/app_pages.dart';
import 'package:get/get.dart';

class SigninController extends GetxController {
  
  void onSignin(){
    Get.offNamed(Routes.HOME);
  }
  void onSignout(){
    Get.offNamed(Routes.SIGNOUT);
  }
}
