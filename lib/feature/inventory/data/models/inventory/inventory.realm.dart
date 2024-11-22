// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

// ignore_for_file: type=lint
class Inventory extends $Inventory
    with RealmEntity, RealmObjectBase, RealmObject {
  Inventory(
    int id,
    double cost,
    double stocks,
    DateTime createdAt,
    DateTime updatedAt, {
    Product? product,
  }) {
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'cost', cost);
    RealmObjectBase.set(this, 'stocks', stocks);
    RealmObjectBase.set(this, 'product', product);
    RealmObjectBase.set(this, 'createdAt', createdAt);
    RealmObjectBase.set(this, 'updatedAt', updatedAt);
  }

  Inventory._();

  @override
  int get id => RealmObjectBase.get<int>(this, 'id') as int;
  @override
  set id(int value) => RealmObjectBase.set(this, 'id', value);

  @override
  double get cost => RealmObjectBase.get<double>(this, 'cost') as double;
  @override
  set cost(double value) => RealmObjectBase.set(this, 'cost', value);

  @override
  double get stocks => RealmObjectBase.get<double>(this, 'stocks') as double;
  @override
  set stocks(double value) => RealmObjectBase.set(this, 'stocks', value);

  @override
  Product? get product =>
      RealmObjectBase.get<Product>(this, 'product') as Product?;
  @override
  set product(covariant Product? value) =>
      RealmObjectBase.set(this, 'product', value);

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
  Stream<RealmObjectChanges<Inventory>> get changes =>
      RealmObjectBase.getChanges<Inventory>(this);

  @override
  Stream<RealmObjectChanges<Inventory>> changesFor([List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<Inventory>(this, keyPaths);

  @override
  Inventory freeze() => RealmObjectBase.freezeObject<Inventory>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'id': id.toEJson(),
      'cost': cost.toEJson(),
      'stocks': stocks.toEJson(),
      'product': product.toEJson(),
      'createdAt': createdAt.toEJson(),
      'updatedAt': updatedAt.toEJson(),
    };
  }

  static EJsonValue _toEJson(Inventory value) => value.toEJson();
  static Inventory _fromEJson(EJsonValue ejson) {
    if (ejson is! Map<String, dynamic>) return raiseInvalidEJson(ejson);
    return switch (ejson) {
      {
        'id': EJsonValue id,
        'cost': EJsonValue cost,
        'stocks': EJsonValue stocks,
        'createdAt': EJsonValue createdAt,
        'updatedAt': EJsonValue updatedAt,
      } =>
        Inventory(
          fromEJson(id),
          fromEJson(cost),
          fromEJson(stocks),
          fromEJson(createdAt),
          fromEJson(updatedAt),
          product: fromEJson(ejson['product']),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(Inventory._);
    register(_toEJson, _fromEJson);
    return const SchemaObject(ObjectType.realmObject, Inventory, 'Inventory', [
      SchemaProperty('id', RealmPropertyType.int, primaryKey: true),
      SchemaProperty('cost', RealmPropertyType.double),
      SchemaProperty('stocks', RealmPropertyType.double),
      SchemaProperty('product', RealmPropertyType.object,
          optional: true, linkTarget: 'Product'),
      SchemaProperty('createdAt', RealmPropertyType.timestamp),
      SchemaProperty('updatedAt', RealmPropertyType.timestamp),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}
