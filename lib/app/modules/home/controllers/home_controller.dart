import 'package:dolistku/app/components/dialog.dart';
import 'package:dolistku/app/realm/connection.dart';
import 'package:dolistku/app/realm/schema.dart' as schema;
import 'package:dolistku/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:localstorage/localstorage.dart';
import 'package:realm/realm.dart';

class HomeController extends GetxController {
  final Connection _connection = Connection();
  late Realm _realm;
  late String _userId;
  final RxList<schema.Notes> notes = <schema.Notes>[].obs;

  @override
  void onReady(){
    super.onReady();
    final userId = localStorage.getItem("userId");
    if(userId == null){
      Get.offAllNamed(Routes.SIGNIN);
    }
    
      _userId = userId!;
    _initialize();
  }

  void _initialize() async{
    try{
      await _connection.connect();
      _realm = _connection.realm;
      _realm.subscriptions.update((action){
        action.add(_realm.all<schema.Notes>());
        action.add(_realm.query<schema.User>("_id == \$0", [ObjectId.fromHexString(_userId)]));
      });
      await _realm.subscriptions.waitForSynchronization();
      _realm.query<schema.Notes>("user._id == \$0 SORT(createdAt DESC)", [ObjectId.fromHexString(_userId)]).changes.listen((event){
        notes.assignAll(event.results);
      });
    }catch(e){
      print(e);
      dialog(title: "Kesalahan pada server!");
    }
  }

  void onSigin(){
    Get.toNamed(Routes.SIGNIN);
  }
  void onAddList(){
    Get.toNamed(Routes.ADDLIST);
  }
}
