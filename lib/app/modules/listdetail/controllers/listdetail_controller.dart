import 'package:dolistku/app/components/dialog.dart';
import 'package:dolistku/app/realm/connection.dart';
import 'package:get/get.dart';
import 'package:dolistku/app/realm/schema.dart' as schema;
import 'package:intl/intl.dart';
import 'package:realm/realm.dart';

class ListdetailController extends GetxController {
  final Connection _connection = Connection();
  late Realm _realm;

  schema.Notes args = Get.arguments;
  RxString title = ''.obs;
  RxString description = ''.obs;
  RxString date = ''.obs;

  @override
  void onReady(){
    super.onReady();
    // ignore: unnecessary_null_comparison
    if(args == null){
      Get.back();
      return;
    }

    title.value = args.title;
    description.value = args.description;
    date.value = DateFormat('dd MMMM yyyy').format(args.schedule);
    _initialize();
  }

  void _initialize() async{
    try{
      await _connection.connect();
      _realm = _connection.realm;
      _realm.subscriptions.update((action){
        action.add(_realm.all<schema.Notes>());
      });
      await _realm.subscriptions.waitForSynchronization();
    }catch(e){
      print(e);
      dialog(title: "Kesalahan pada server!");
    }
  }

  void delete(){
    try{
      final note = _realm.find<schema.Notes>(args.id);
      if(note == null){
        dialog(title: "Data tidak ditemukan!");
        return;
      }

      _realm.write(() {
        _realm.delete<schema.Notes>(note);
      });
      Get.back();
    }catch(e){
      print(e);
      dialog(title: "Kesalahan pada server!");
    }
  }
}
