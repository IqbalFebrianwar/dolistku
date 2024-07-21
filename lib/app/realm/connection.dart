import 'package:realm/realm.dart';
import './schema.dart' as schema;

class Connection {
  late Realm _realm;

  Future<void> connect() async {
    final app = App(AppConfiguration('application-0-gztnbdz'));
    final user = app.currentUser ?? await app.logIn(Credentials.anonymous());
    _realm = Realm(Configuration.flexibleSync(user, [
      schema.User.schema,
      schema.Notes.schema
    ]));
  }

  get realm => _realm;
}
