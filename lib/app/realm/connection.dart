import 'package:realm/realm.dart';
import './schema.dart' as schema;

class Connection {
  late Realm realm;

  Future<void> connect() async {
    final app = App(AppConfiguration('dolistku-bokdzfl'));
    final user = app.currentUser ?? await app.logIn(Credentials.anonymous());
    realm = Realm(Configuration.flexibleSync(user, [
      schema.User.schema,
      schema.Notes.schema
    ]));
  }
}
