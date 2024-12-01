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
    double currentCost,
    double wac,
    double stockLevel,
    double reorderLevel,
    DateTime lastStockUpdate,
    DateTime createdAt,
    DateTime updatedAt, {
    Product? product,
    Iterable<InventoryTransaction> transactions = const [],
  }) {
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'currentCost', currentCost);
    RealmObjectBase.set(this, 'wac', wac);
    RealmObjectBase.set(this, 'stockLevel', stockLevel);
    RealmObjectBase.set(this, 'reorderLevel', reorderLevel);
    RealmObjectBase.set(this, 'lastStockUpdate', lastStockUpdate);
    RealmObjectBase.set(this, 'createdAt', createdAt);
    RealmObjectBase.set(this, 'updatedAt', updatedAt);
    RealmObjectBase.set(this, 'product', product);
    RealmObjectBase.set<RealmList<InventoryTransaction>>(
        this, 'transactions', RealmList<InventoryTransaction>(transactions));
  }

  Inventory._();

  @override
  int get id => RealmObjectBase.get<int>(this, 'id') as int;
  @override
  set id(int value) => RealmObjectBase.set(this, 'id', value);

  @override
  double get currentCost =>
      RealmObjectBase.get<double>(this, 'currentCost') as double;
  @override
  set currentCost(double value) =>
      RealmObjectBase.set(this, 'currentCost', value);

  @override
  double get wac => RealmObjectBase.get<double>(this, 'wac') as double;
  @override
  set wac(double value) => RealmObjectBase.set(this, 'wac', value);

  @override
  double get stockLevel =>
      RealmObjectBase.get<double>(this, 'stockLevel') as double;
  @override
  set stockLevel(double value) =>
      RealmObjectBase.set(this, 'stockLevel', value);

  @override
  double get reorderLevel =>
      RealmObjectBase.get<double>(this, 'reorderLevel') as double;
  @override
  set reorderLevel(double value) =>
      RealmObjectBase.set(this, 'reorderLevel', value);

  @override
  DateTime get lastStockUpdate =>
      RealmObjectBase.get<DateTime>(this, 'lastStockUpdate') as DateTime;
  @override
  set lastStockUpdate(DateTime value) =>
      RealmObjectBase.set(this, 'lastStockUpdate', value);

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
  Product? get product =>
      RealmObjectBase.get<Product>(this, 'product') as Product?;
  @override
  set product(covariant Product? value) =>
      RealmObjectBase.set(this, 'product', value);

  @override
  RealmList<InventoryTransaction> get transactions =>
      RealmObjectBase.get<InventoryTransaction>(this, 'transactions')
          as RealmList<InventoryTransaction>;
  @override
  set transactions(covariant RealmList<InventoryTransaction> value) =>
      throw RealmUnsupportedSetError();

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
      'currentCost': currentCost.toEJson(),
      'wac': wac.toEJson(),
      'stockLevel': stockLevel.toEJson(),
      'reorderLevel': reorderLevel.toEJson(),
      'lastStockUpdate': lastStockUpdate.toEJson(),
      'createdAt': createdAt.toEJson(),
      'updatedAt': updatedAt.toEJson(),
      'product': product.toEJson(),
      'transactions': transactions.toEJson(),
    };
  }

  static EJsonValue _toEJson(Inventory value) => value.toEJson();
  static Inventory _fromEJson(EJsonValue ejson) {
    if (ejson is! Map<String, dynamic>) return raiseInvalidEJson(ejson);
    return switch (ejson) {
      {
        'id': EJsonValue id,
        'currentCost': EJsonValue currentCost,
        'wac': EJsonValue wac,
        'stockLevel': EJsonValue stockLevel,
        'reorderLevel': EJsonValue reorderLevel,
        'lastStockUpdate': EJsonValue lastStockUpdate,
        'createdAt': EJsonValue createdAt,
        'updatedAt': EJsonValue updatedAt,
      } =>
        Inventory(
          fromEJson(id),
          fromEJson(currentCost),
          fromEJson(wac),
          fromEJson(stockLevel),
          fromEJson(reorderLevel),
          fromEJson(lastStockUpdate),
          fromEJson(createdAt),
          fromEJson(updatedAt),
          product: fromEJson(ejson['product']),
          transactions: fromEJson(ejson['transactions']),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(Inventory._);
    register(_toEJson, _fromEJson);
    return const SchemaObject(ObjectType.realmObject, Inventory, 'Inventory', [
      SchemaProperty('id', RealmPropertyType.int, primaryKey: true),
      SchemaProperty('currentCost', RealmPropertyType.double),
      SchemaProperty('wac', RealmPropertyType.double),
      SchemaProperty('stockLevel', RealmPropertyType.double),
      SchemaProperty('reorderLevel', RealmPropertyType.double),
      SchemaProperty('lastStockUpdate', RealmPropertyType.timestamp),
      SchemaProperty('createdAt', RealmPropertyType.timestamp),
      SchemaProperty('updatedAt', RealmPropertyType.timestamp),
      SchemaProperty('product', RealmPropertyType.object,
          optional: true, linkTarget: 'Product'),
      SchemaProperty('transactions', RealmPropertyType.object,
          linkTarget: 'InventoryTransaction',
          collectionType: RealmCollectionType.list),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}
