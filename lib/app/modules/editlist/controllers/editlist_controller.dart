import 'package:dolistku/app/components/dialog.dart';
import 'package:dolistku/app/realm/connection.dart';
import 'package:dolistku/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dolistku/app/realm/schema.dart' as schema;
import 'package:localstorage/localstorage.dart';
import 'package:realm/realm.dart';

class EditlistController extends GetxController {
  schema.Notes args = Get.arguments;
  final Connection _connection = Connection();
  late Realm _realm;
  late String _userId;
  TextEditingController nameController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  Rx<DateTime> selectedDate = DateTime.now().obs;

  Future<void> selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate.value,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate.value) {
      selectedDate.value = picked;
    }
  }

  @override
  void onReady(){
    super.onReady();
    final userId = localStorage.getItem("userId");
    if(userId == null){
      dialog(title: "Login dulu we!", onPressed: () => Get.offAllNamed(Routes.SIGNIN));
      return;
    }

    // ignore: unnecessary_null_comparison
    if(args == null){
      dialog(title: "Data tidak ditemukan!", onPressed: () => Get.offAllNamed(Routes.HOME));
      return;
    }

    _userId = userId;
    _initialize();
  }

  void _initialize() async {
    try{
      await _connection.connect();
      _realm = _connection.realm;
      _realm.subscriptions.update((action){
        action.add(_realm.all<schema.Notes>());
        action.add(_realm.query<schema.User>("_id == \$0", [ObjectId.fromHexString(_userId)]));
      });
      await _realm.subscriptions.waitForSynchronization();
      nameController.text = args.title;
      descriptionController.text = args.description;
      selectedDate.value = args.schedule;
    }catch(e){
      dialog(title: "Kesalahan pada server!");
    }
  }

  void onSubmit(){
    if(nameController.text.isEmpty){
      dialog(title: "Nama list tidak boleh kosong!");
      return;
    }

    if(selectedDate.value.isBefore(DateTime.now())){
      dialog(title: "Tanggal tidak boleh kurang dari hari ini!");
      return;
    }

    final user = _realm.find<schema.User>(ObjectId.fromHexString(_userId));
    _realm.write((){
      _realm.add(schema.Notes(
        args.id,
        nameController.text,
        descriptionController.text,
        selectedDate.value,
        args.createdAt,
        user: user
      ), update: true);
    });

    Get.back();
    Get.back();
  }
}
