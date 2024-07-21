// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

// ignore_for_file: type=lint
class User extends _User with RealmEntity, RealmObjectBase, RealmObject {
  User(
    ObjectId id,
    String name,
    String username,
    String password,
    DateTime createdAt, {
    Iterable<Notes> notes = const [],
  }) {
    RealmObjectBase.set(this, '_id', id);
    RealmObjectBase.set(this, 'name', name);
    RealmObjectBase.set(this, 'username', username);
    RealmObjectBase.set(this, 'password', password);
    RealmObjectBase.set(this, 'createdAt', createdAt);
    RealmObjectBase.set<RealmList<Notes>>(
        this, 'notes', RealmList<Notes>(notes));
  }

  User._();

  @override
  ObjectId get id => RealmObjectBase.get<ObjectId>(this, '_id') as ObjectId;
  @override
  set id(ObjectId value) => RealmObjectBase.set(this, '_id', value);

  @override
  String get name => RealmObjectBase.get<String>(this, 'name') as String;
  @override
  set name(String value) => RealmObjectBase.set(this, 'name', value);

  @override
  String get username =>
      RealmObjectBase.get<String>(this, 'username') as String;
  @override
  set username(String value) => RealmObjectBase.set(this, 'username', value);

  @override
  String get password =>
      RealmObjectBase.get<String>(this, 'password') as String;
  @override
  set password(String value) => RealmObjectBase.set(this, 'password', value);

  @override
  DateTime get createdAt =>
      RealmObjectBase.get<DateTime>(this, 'createdAt') as DateTime;
  @override
  set createdAt(DateTime value) =>
      RealmObjectBase.set(this, 'createdAt', value);

  @override
  RealmList<Notes> get notes =>
      RealmObjectBase.get<Notes>(this, 'notes') as RealmList<Notes>;
  @override
  set notes(covariant RealmList<Notes> value) =>
      throw RealmUnsupportedSetError();

  @override
  Stream<RealmObjectChanges<User>> get changes =>
      RealmObjectBase.getChanges<User>(this);

  @override
  Stream<RealmObjectChanges<User>> changesFor([List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<User>(this, keyPaths);

  @override
  User freeze() => RealmObjectBase.freezeObject<User>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      '_id': id.toEJson(),
      'name': name.toEJson(),
      'username': username.toEJson(),
      'password': password.toEJson(),
      'createdAt': createdAt.toEJson(),
      'notes': notes.toEJson(),
    };
  }

  static EJsonValue _toEJson(User value) => value.toEJson();
  static User _fromEJson(EJsonValue ejson) {
    return switch (ejson) {
      {
        '_id': EJsonValue id,
        'name': EJsonValue name,
        'username': EJsonValue username,
        'password': EJsonValue password,
        'createdAt': EJsonValue createdAt,
        'notes': EJsonValue notes,
      } =>
        User(
          fromEJson(id),
          fromEJson(name),
          fromEJson(username),
          fromEJson(password),
          fromEJson(createdAt),
          notes: fromEJson(notes),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(User._);
    register(_toEJson, _fromEJson);
    return SchemaObject(ObjectType.realmObject, User, 'User', [
      SchemaProperty('id', RealmPropertyType.objectid,
          mapTo: '_id', primaryKey: true),
      SchemaProperty('name', RealmPropertyType.string),
      SchemaProperty('username', RealmPropertyType.string),
      SchemaProperty('password', RealmPropertyType.string),
      SchemaProperty('createdAt', RealmPropertyType.timestamp),
      SchemaProperty('notes', RealmPropertyType.object,
          linkTarget: 'Notes', collectionType: RealmCollectionType.list),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}

class Notes extends _Notes with RealmEntity, RealmObjectBase, RealmObject {
  Notes(
    ObjectId id,
    String title,
    String description,
    DateTime schedule,
    DateTime createdAt, {
    User? user,
  }) {
    RealmObjectBase.set(this, '_id', id);
    RealmObjectBase.set(this, 'title', title);
    RealmObjectBase.set(this, 'description', description);
    RealmObjectBase.set(this, 'schedule', schedule);
    RealmObjectBase.set(this, 'createdAt', createdAt);
    RealmObjectBase.set(this, 'user', user);
  }

  Notes._();

  @override
  ObjectId get id => RealmObjectBase.get<ObjectId>(this, '_id') as ObjectId;
  @override
  set id(ObjectId value) => RealmObjectBase.set(this, '_id', value);

  @override
  String get title => RealmObjectBase.get<String>(this, 'title') as String;
  @override
  set title(String value) => RealmObjectBase.set(this, 'title', value);

  @override
  String get description =>
      RealmObjectBase.get<String>(this, 'description') as String;
  @override
  set description(String value) =>
      RealmObjectBase.set(this, 'description', value);

  @override
  DateTime get schedule =>
      RealmObjectBase.get<DateTime>(this, 'schedule') as DateTime;
  @override
  set schedule(DateTime value) => RealmObjectBase.set(this, 'schedule', value);

  @override
  DateTime get createdAt =>
      RealmObjectBase.get<DateTime>(this, 'createdAt') as DateTime;
  @override
  set createdAt(DateTime value) =>
      RealmObjectBase.set(this, 'createdAt', value);

  @override
  User? get user => RealmObjectBase.get<User>(this, 'user') as User?;
  @override
  set user(covariant User? value) => RealmObjectBase.set(this, 'user', value);

  @override
  Stream<RealmObjectChanges<Notes>> get changes =>
      RealmObjectBase.getChanges<Notes>(this);

  @override
  Stream<RealmObjectChanges<Notes>> changesFor([List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<Notes>(this, keyPaths);

  @override
  Notes freeze() => RealmObjectBase.freezeObject<Notes>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      '_id': id.toEJson(),
      'title': title.toEJson(),
      'description': description.toEJson(),
      'schedule': schedule.toEJson(),
      'createdAt': createdAt.toEJson(),
      'user': user.toEJson(),
    };
  }

  static EJsonValue _toEJson(Notes value) => value.toEJson();
  static Notes _fromEJson(EJsonValue ejson) {
    return switch (ejson) {
      {
        '_id': EJsonValue id,
        'title': EJsonValue title,
        'description': EJsonValue description,
        'schedule': EJsonValue schedule,
        'createdAt': EJsonValue createdAt,
        'user': EJsonValue user,
      } =>
        Notes(
          fromEJson(id),
          fromEJson(title),
          fromEJson(description),
          fromEJson(schedule),
          fromEJson(createdAt),
          user: fromEJson(user),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(Notes._);
    register(_toEJson, _fromEJson);
    return SchemaObject(ObjectType.realmObject, Notes, 'Notes', [
      SchemaProperty('id', RealmPropertyType.objectid,
          mapTo: '_id', primaryKey: true),
      SchemaProperty('title', RealmPropertyType.string),
      SchemaProperty('description', RealmPropertyType.string),
      SchemaProperty('schedule', RealmPropertyType.timestamp),
      SchemaProperty('createdAt', RealmPropertyType.timestamp),
      SchemaProperty('user', RealmPropertyType.object,
          optional: true, linkTarget: 'User'),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}
