// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

// ignore_for_file: type=lint
class Product extends $Product with RealmEntity, RealmObjectBase, RealmObject {
  Product(
    int id,
    String name,
    double price,
    double lowStockLevel,
    double stockOnHand,
    DateTime createdAt,
    DateTime updatedAt, {
    String? photo,
    Category? category,
    Uom? uom,
    Iterable<Inventory> inventories = const [],
    Iterable<PosOrder> orders = const [],
  }) {
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'photo', photo);
    RealmObjectBase.set(this, 'name', name);
    RealmObjectBase.set(this, 'price', price);
    RealmObjectBase.set(this, 'lowStockLevel', lowStockLevel);
    RealmObjectBase.set(this, 'stockOnHand', stockOnHand);
    RealmObjectBase.set(this, 'category', category);
    RealmObjectBase.set(this, 'uom', uom);
    RealmObjectBase.set<RealmList<Inventory>>(
        this, 'inventories', RealmList<Inventory>(inventories));
    RealmObjectBase.set<RealmList<PosOrder>>(
        this, 'orders', RealmList<PosOrder>(orders));
    RealmObjectBase.set(this, 'createdAt', createdAt);
    RealmObjectBase.set(this, 'updatedAt', updatedAt);
  }

  Product._();

  @override
  int get id => RealmObjectBase.get<int>(this, 'id') as int;
  @override
  set id(int value) => RealmObjectBase.set(this, 'id', value);

  @override
  String? get photo => RealmObjectBase.get<String>(this, 'photo') as String?;
  @override
  set photo(String? value) => RealmObjectBase.set(this, 'photo', value);

  @override
  String get name => RealmObjectBase.get<String>(this, 'name') as String;
  @override
  set name(String value) => RealmObjectBase.set(this, 'name', value);

  @override
  double get price => RealmObjectBase.get<double>(this, 'price') as double;
  @override
  set price(double value) => RealmObjectBase.set(this, 'price', value);

  @override
  double get lowStockLevel =>
      RealmObjectBase.get<double>(this, 'lowStockLevel') as double;
  @override
  set lowStockLevel(double value) =>
      RealmObjectBase.set(this, 'lowStockLevel', value);

  @override
  double get stockOnHand =>
      RealmObjectBase.get<double>(this, 'stockOnHand') as double;
  @override
  set stockOnHand(double value) =>
      RealmObjectBase.set(this, 'stockOnHand', value);

  @override
  Category? get category =>
      RealmObjectBase.get<Category>(this, 'category') as Category?;
  @override
  set category(covariant Category? value) =>
      RealmObjectBase.set(this, 'category', value);

  @override
  Uom? get uom => RealmObjectBase.get<Uom>(this, 'uom') as Uom?;
  @override
  set uom(covariant Uom? value) => RealmObjectBase.set(this, 'uom', value);

  @override
  RealmList<Inventory> get inventories =>
      RealmObjectBase.get<Inventory>(this, 'inventories')
          as RealmList<Inventory>;
  @override
  set inventories(covariant RealmList<Inventory> value) =>
      throw RealmUnsupportedSetError();

  @override
  RealmList<PosOrder> get orders =>
      RealmObjectBase.get<PosOrder>(this, 'orders') as RealmList<PosOrder>;
  @override
  set orders(covariant RealmList<PosOrder> value) =>
      throw RealmUnsupportedSetError();

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
  Stream<RealmObjectChanges<Product>> get changes =>
      RealmObjectBase.getChanges<Product>(this);

  @override
  Stream<RealmObjectChanges<Product>> changesFor([List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<Product>(this, keyPaths);

  @override
  Product freeze() => RealmObjectBase.freezeObject<Product>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'id': id.toEJson(),
      'photo': photo.toEJson(),
      'name': name.toEJson(),
      'price': price.toEJson(),
      'lowStockLevel': lowStockLevel.toEJson(),
      'stockOnHand': stockOnHand.toEJson(),
      'category': category.toEJson(),
      'uom': uom.toEJson(),
      'inventories': inventories.toEJson(),
      'orders': orders.toEJson(),
      'createdAt': createdAt.toEJson(),
      'updatedAt': updatedAt.toEJson(),
    };
  }

  static EJsonValue _toEJson(Product value) => value.toEJson();
  static Product _fromEJson(EJsonValue ejson) {
    if (ejson is! Map<String, dynamic>) return raiseInvalidEJson(ejson);
    return switch (ejson) {
      {
        'id': EJsonValue id,
        'name': EJsonValue name,
        'price': EJsonValue price,
        'lowStockLevel': EJsonValue lowStockLevel,
        'stockOnHand': EJsonValue stockOnHand,
        'createdAt': EJsonValue createdAt,
        'updatedAt': EJsonValue updatedAt,
      } =>
        Product(
          fromEJson(id),
          fromEJson(name),
          fromEJson(price),
          fromEJson(lowStockLevel),
          fromEJson(stockOnHand),
          fromEJson(createdAt),
          fromEJson(updatedAt),
          photo: fromEJson(ejson['photo']),
          category: fromEJson(ejson['category']),
          uom: fromEJson(ejson['uom']),
          inventories: fromEJson(ejson['inventories']),
          orders: fromEJson(ejson['orders']),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(Product._);
    register(_toEJson, _fromEJson);
    return const SchemaObject(ObjectType.realmObject, Product, 'Product', [
      SchemaProperty('id', RealmPropertyType.int, primaryKey: true),
      SchemaProperty('photo', RealmPropertyType.string, optional: true),
      SchemaProperty('name', RealmPropertyType.string),
      SchemaProperty('price', RealmPropertyType.double),
      SchemaProperty('lowStockLevel', RealmPropertyType.double),
      SchemaProperty('stockOnHand', RealmPropertyType.double),
      SchemaProperty('category', RealmPropertyType.object,
          optional: true, linkTarget: 'Category'),
      SchemaProperty('uom', RealmPropertyType.object,
          optional: true, linkTarget: 'Uom'),
      SchemaProperty('inventories', RealmPropertyType.object,
          linkTarget: 'Inventory', collectionType: RealmCollectionType.list),
      SchemaProperty('orders', RealmPropertyType.object,
          linkTarget: 'PosOrder', collectionType: RealmCollectionType.list),
      SchemaProperty('createdAt', RealmPropertyType.timestamp),
      SchemaProperty('updatedAt', RealmPropertyType.timestamp),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}
