import 'package:dolistku/app/components/dialog.dart';
import 'package:dolistku/app/realm/connection.dart';
import 'package:dolistku/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:localstorage/localstorage.dart';
import 'package:realm/realm.dart';
import 'package:dolistku/app/realm/schema.dart' as schema;

class SigninController extends GetxController {
  final Connection _connection = Connection();
  late Realm _realm;
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void onReady(){
    super.onReady();
    _initialize();
  }

  void _initialize() async {
    try{
      await _connection.connect();
      _realm = _connection.realm;
      _realm.subscriptions.update((action){
        action.add(_realm.all<schema.User>());
      });
      await _realm.subscriptions.waitForSynchronization();
    }catch(_){
      dialog(title: "Kesalahan pada server!");
    }
  }

  void onSignin(){
    Get.offNamed(Routes.HOME);
  }
  void onSignout(){
    Get.offNamed(Routes.SIGNOUT);
  }

  void signIn(){
    if(usernameController.text.isEmpty || passwordController.text.isEmpty){
      dialog(title: "Username dan password tidak boleh kosong!");
      return;
    }

    final user = _realm.query<schema.User>("username == \$0", [usernameController.text]).toList();
    if(user.isEmpty){
      dialog(title: "Username tidak ditemukan!");
      return;
    }

    if(user.first.password != passwordController.text){
      dialog(title: "Password salah!");
      return;
    }

    localStorage.setItem("userId", user.first.id.toString());
    Get.offNamed(Routes.HOME);
  }
}
