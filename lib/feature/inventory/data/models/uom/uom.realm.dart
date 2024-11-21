// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'uom.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

// ignore_for_file: type=lint
class Uom extends _Uom with RealmEntity, RealmObjectBase, RealmObject {
  Uom(
    int id,
    String name,
    String symbol,
    String uom,
    DateTime createdAt,
    DateTime updatedAt,
  ) {
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'name', name);
    RealmObjectBase.set(this, 'symbol', symbol);
    RealmObjectBase.set(this, 'uom', uom);
    RealmObjectBase.set(this, 'createdAt', createdAt);
    RealmObjectBase.set(this, 'updatedAt', updatedAt);
  }

  Uom._();

  @override
  int get id => RealmObjectBase.get<int>(this, 'id') as int;
  @override
  set id(int value) => RealmObjectBase.set(this, 'id', value);

  @override
  String get name => RealmObjectBase.get<String>(this, 'name') as String;
  @override
  set name(String value) => RealmObjectBase.set(this, 'name', value);

  @override
  String get symbol => RealmObjectBase.get<String>(this, 'symbol') as String;
  @override
  set symbol(String value) => RealmObjectBase.set(this, 'symbol', value);

  @override
  String get uom => RealmObjectBase.get<String>(this, 'uom') as String;
  @override
  set uom(String value) => RealmObjectBase.set(this, 'uom', value);

  @override
  DateTime get createdAt =>
      RealmObjectBase.get<DateTime>(this, 'createdAt') as DateTime;
  @override
  set createdAt(DateTime value) =>
      RealmObjectBase.set(this, 'createdAt', value);

  @override
  DateTime get updatedAt =>
      RealmObjectBase.get<DateTime>(this, 'updatedAt') as DateTime;
  @override
  set updatedAt(DateTime value) =>
      RealmObjectBase.set(this, 'updatedAt', value);

  @override
  Stream<RealmObjectChanges<Uom>> get changes =>
      RealmObjectBase.getChanges<Uom>(this);

  @override
  Stream<RealmObjectChanges<Uom>> changesFor([List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<Uom>(this, keyPaths);

  @override
  Uom freeze() => RealmObjectBase.freezeObject<Uom>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'id': id.toEJson(),
      'name': name.toEJson(),
      'symbol': symbol.toEJson(),
      'uom': uom.toEJson(),
      'createdAt': createdAt.toEJson(),
      'updatedAt': updatedAt.toEJson(),
    };
  }

  static EJsonValue _toEJson(Uom value) => value.toEJson();
  static Uom _fromEJson(EJsonValue ejson) {
    if (ejson is! Map<String, dynamic>) return raiseInvalidEJson(ejson);
    return switch (ejson) {
      {
        'id': EJsonValue id,
        'name': EJsonValue name,
        'symbol': EJsonValue symbol,
        'uom': EJsonValue uom,
        'createdAt': EJsonValue createdAt,
        'updatedAt': EJsonValue updatedAt,
      } =>
        Uom(
          fromEJson(id),
          fromEJson(name),
          fromEJson(symbol),
          fromEJson(uom),
          fromEJson(createdAt),
          fromEJson(updatedAt),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(Uom._);
    register(_toEJson, _fromEJson);
    return const SchemaObject(ObjectType.realmObject, Uom, 'Uom', [
      SchemaProperty('id', RealmPropertyType.int, primaryKey: true),
      SchemaProperty('name', RealmPropertyType.string),
      SchemaProperty('symbol', RealmPropertyType.string),
      SchemaProperty('uom', RealmPropertyType.string),
      SchemaProperty('createdAt', RealmPropertyType.timestamp),
      SchemaProperty('updatedAt', RealmPropertyType.timestamp),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}
