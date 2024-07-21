import 'package:dolistku/app/components/dialog.dart';
import 'package:dolistku/app/realm/connection.dart';
import 'package:dolistku/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:realm/realm.dart';
import 'package:dolistku/app/realm/schema.dart' as schema;

class SignoutController extends GetxController {
  final Connection _connection = Connection();
  late Realm _realm;
  TextEditingController nameController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void onReady(){
    super.onReady();
    _initialize();
  }

  void login() {
    Get.offNamed(Routes.SIGNIN);
  }

  void _initialize() async {
    try{
      await _connection.connect();
      _realm = _connection.realm();
      _realm.subscriptions.update((action){
        action.add(_realm.all<schema.User>());
      });
      await _realm.subscriptions.waitForSynchronization();
    }catch(_){
      dialog(
        title: "Kesalahan pada server!"
      );
    }
  }

  

  bool _checkUsername({ required String username }){
    final user = _realm.query<schema.User>("username == \$0", [username]).toList();
    return user.isEmpty;
  }

  void _insertUser(){
    _realm.write((){
      _realm.add(schema.User(
        ObjectId(),
        nameController.text,
        usernameController.text,
        passwordController.text,
        DateTime.timestamp()
      ));
    });
  }

  void onSubmit(){
    if(nameController.text.isEmpty && usernameController.text.isEmpty && passwordController.text.isEmpty){
      dialog(title: "Ga boleh kosong!");
      return;
    }

    if(_checkUsername(username: usernameController.text)){
      _insertUser();
    }else{
      dialog(title: "Username udah kedaftar!");
    }
  }
}
