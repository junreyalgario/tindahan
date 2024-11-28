// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pos_order.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

// ignore_for_file: type=lint
class PosOrder extends $PosOrder
    with RealmEntity, RealmObjectBase, RealmObject {
  PosOrder(
    int id,
    double price,
    double quantity,
    double amount,
    DateTime createdAt,
    DateTime updatedAt, {
    Product? product,
    PosTransaction? transaction,
  }) {
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'product', product);
    RealmObjectBase.set(this, 'price', price);
    RealmObjectBase.set(this, 'quantity', quantity);
    RealmObjectBase.set(this, 'amount', amount);
    RealmObjectBase.set(this, 'createdAt', createdAt);
    RealmObjectBase.set(this, 'updatedAt', updatedAt);
    RealmObjectBase.set(this, 'transaction', transaction);
  }

  PosOrder._();

  @override
  int get id => RealmObjectBase.get<int>(this, 'id') as int;
  @override
  set id(int value) => RealmObjectBase.set(this, 'id', value);

  @override
  Product? get product =>
      RealmObjectBase.get<Product>(this, 'product') as Product?;
  @override
  set product(covariant Product? value) =>
      RealmObjectBase.set(this, 'product', value);

  @override
  double get price => RealmObjectBase.get<double>(this, 'price') as double;
  @override
  set price(double value) => RealmObjectBase.set(this, 'price', value);

  @override
  double get quantity =>
      RealmObjectBase.get<double>(this, 'quantity') as double;
  @override
  set quantity(double value) => RealmObjectBase.set(this, 'quantity', value);

  @override
  double get amount => RealmObjectBase.get<double>(this, 'amount') as double;
  @override
  set amount(double value) => RealmObjectBase.set(this, 'amount', value);

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
  PosTransaction? get transaction =>
      RealmObjectBase.get<PosTransaction>(this, 'transaction')
          as PosTransaction?;
  @override
  set transaction(covariant PosTransaction? value) =>
      RealmObjectBase.set(this, 'transaction', value);

  @override
  Stream<RealmObjectChanges<PosOrder>> get changes =>
      RealmObjectBase.getChanges<PosOrder>(this);

  @override
  Stream<RealmObjectChanges<PosOrder>> changesFor([List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<PosOrder>(this, keyPaths);

  @override
  PosOrder freeze() => RealmObjectBase.freezeObject<PosOrder>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'id': id.toEJson(),
      'product': product.toEJson(),
      'price': price.toEJson(),
      'quantity': quantity.toEJson(),
      'amount': amount.toEJson(),
      'createdAt': createdAt.toEJson(),
      'updatedAt': updatedAt.toEJson(),
      'transaction': transaction.toEJson(),
    };
  }

  static EJsonValue _toEJson(PosOrder value) => value.toEJson();
  static PosOrder _fromEJson(EJsonValue ejson) {
    if (ejson is! Map<String, dynamic>) return raiseInvalidEJson(ejson);
    return switch (ejson) {
      {
        'id': EJsonValue id,
        'price': EJsonValue price,
        'quantity': EJsonValue quantity,
        'amount': EJsonValue amount,
        'createdAt': EJsonValue createdAt,
        'updatedAt': EJsonValue updatedAt,
      } =>
        PosOrder(
          fromEJson(id),
          fromEJson(price),
          fromEJson(quantity),
          fromEJson(amount),
          fromEJson(createdAt),
          fromEJson(updatedAt),
          product: fromEJson(ejson['product']),
          transaction: fromEJson(ejson['transaction']),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(PosOrder._);
    register(_toEJson, _fromEJson);
    return const SchemaObject(ObjectType.realmObject, PosOrder, 'PosOrder', [
      SchemaProperty('id', RealmPropertyType.int, primaryKey: true),
      SchemaProperty('product', RealmPropertyType.object,
          optional: true, linkTarget: 'Product'),
      SchemaProperty('price', RealmPropertyType.double),
      SchemaProperty('quantity', RealmPropertyType.double),
      SchemaProperty('amount', RealmPropertyType.double),
      SchemaProperty('createdAt', RealmPropertyType.timestamp),
      SchemaProperty('updatedAt', RealmPropertyType.timestamp),
      SchemaProperty('transaction', RealmPropertyType.object,
          optional: true, linkTarget: 'PosTransaction'),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}
