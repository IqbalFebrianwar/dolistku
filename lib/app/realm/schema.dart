import 'package:realm/realm.dart';

part 'schema.realm.dart';

@RealmModel()
class _User{
  @PrimaryKey()
  @MapTo("_id")
  late ObjectId id;
  late String name;
  late String username;
  late String password;
  late DateTime createdAt;

  late List<_Notes> notes;
}

@RealmModel()
class _Notes{
  @PrimaryKey()
  @MapTo("_id")
  late ObjectId id;
  late String title;
  late String description;
  late DateTime schedule;
  late DateTime createdAt;

  late _User? user;
}