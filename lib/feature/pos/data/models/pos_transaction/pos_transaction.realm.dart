// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pos_transaction.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

// ignore_for_file: type=lint
class PosTransaction extends $PosTransaction
    with RealmEntity, RealmObjectBase, RealmObject {
  PosTransaction(
    int id,
    double totalQuantity,
    double totalAmount,
    double vat,
    double payable,
    double amountReceived,
    double change,
    int status,
    DateTime createdAt,
    DateTime updatedAt, {
    Iterable<PosOrder> orders = const [],
  }) {
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'totalQuantity', totalQuantity);
    RealmObjectBase.set(this, 'totalAmount', totalAmount);
    RealmObjectBase.set(this, 'vat', vat);
    RealmObjectBase.set(this, 'payable', payable);
    RealmObjectBase.set(this, 'amountReceived', amountReceived);
    RealmObjectBase.set(this, 'change', change);
    RealmObjectBase.set(this, 'status', status);
    RealmObjectBase.set(this, 'createdAt', createdAt);
    RealmObjectBase.set(this, 'updatedAt', updatedAt);
    RealmObjectBase.set<RealmList<PosOrder>>(
        this, 'orders', RealmList<PosOrder>(orders));
  }

  PosTransaction._();

  @override
  int get id => RealmObjectBase.get<int>(this, 'id') as int;
  @override
  set id(int value) => RealmObjectBase.set(this, 'id', value);

  @override
  double get totalQuantity =>
      RealmObjectBase.get<double>(this, 'totalQuantity') as double;
  @override
  set totalQuantity(double value) =>
      RealmObjectBase.set(this, 'totalQuantity', value);

  @override
  double get totalAmount =>
      RealmObjectBase.get<double>(this, 'totalAmount') as double;
  @override
  set totalAmount(double value) =>
      RealmObjectBase.set(this, 'totalAmount', value);

  @override
  double get vat => RealmObjectBase.get<double>(this, 'vat') as double;
  @override
  set vat(double value) => RealmObjectBase.set(this, 'vat', value);

  @override
  double get payable => RealmObjectBase.get<double>(this, 'payable') as double;
  @override
  set payable(double value) => RealmObjectBase.set(this, 'payable', value);

  @override
  double get amountReceived =>
      RealmObjectBase.get<double>(this, 'amountReceived') as double;
  @override
  set amountReceived(double value) =>
      RealmObjectBase.set(this, 'amountReceived', value);

  @override
  double get change => RealmObjectBase.get<double>(this, 'change') as double;
  @override
  set change(double value) => RealmObjectBase.set(this, 'change', value);

  @override
  int get status => RealmObjectBase.get<int>(this, 'status') as int;
  @override
  set status(int value) => RealmObjectBase.set(this, 'status', value);

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
  RealmList<PosOrder> get orders =>
      RealmObjectBase.get<PosOrder>(this, 'orders') as RealmList<PosOrder>;
  @override
  set orders(covariant RealmList<PosOrder> value) =>
      throw RealmUnsupportedSetError();

  @override
  Stream<RealmObjectChanges<PosTransaction>> get changes =>
      RealmObjectBase.getChanges<PosTransaction>(this);

  @override
  Stream<RealmObjectChanges<PosTransaction>> changesFor(
          [List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<PosTransaction>(this, keyPaths);

  @override
  PosTransaction freeze() => RealmObjectBase.freezeObject<PosTransaction>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'id': id.toEJson(),
      'totalQuantity': totalQuantity.toEJson(),
      'totalAmount': totalAmount.toEJson(),
      'vat': vat.toEJson(),
      'payable': payable.toEJson(),
      'amountReceived': amountReceived.toEJson(),
      'change': change.toEJson(),
      'status': status.toEJson(),
      'createdAt': createdAt.toEJson(),
      'updatedAt': updatedAt.toEJson(),
      'orders': orders.toEJson(),
    };
  }

  static EJsonValue _toEJson(PosTransaction value) => value.toEJson();
  static PosTransaction _fromEJson(EJsonValue ejson) {
    if (ejson is! Map<String, dynamic>) return raiseInvalidEJson(ejson);
    return switch (ejson) {
      {
        'id': EJsonValue id,
        'totalQuantity': EJsonValue totalQuantity,
        'totalAmount': EJsonValue totalAmount,
        'vat': EJsonValue vat,
        'payable': EJsonValue payable,
        'amountReceived': EJsonValue amountReceived,
        'change': EJsonValue change,
        'status': EJsonValue status,
        'createdAt': EJsonValue createdAt,
        'updatedAt': EJsonValue updatedAt,
      } =>
        PosTransaction(
          fromEJson(id),
          fromEJson(totalQuantity),
          fromEJson(totalAmount),
          fromEJson(vat),
          fromEJson(payable),
          fromEJson(amountReceived),
          fromEJson(change),
          fromEJson(status),
          fromEJson(createdAt),
          fromEJson(updatedAt),
          orders: fromEJson(ejson['orders']),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(PosTransaction._);
    register(_toEJson, _fromEJson);
    return const SchemaObject(
        ObjectType.realmObject, PosTransaction, 'PosTransaction', [
      SchemaProperty('id', RealmPropertyType.int, primaryKey: true),
      SchemaProperty('totalQuantity', RealmPropertyType.double),
      SchemaProperty('totalAmount', RealmPropertyType.double),
      SchemaProperty('vat', RealmPropertyType.double),
      SchemaProperty('payable', RealmPropertyType.double),
      SchemaProperty('amountReceived', RealmPropertyType.double),
      SchemaProperty('change', RealmPropertyType.double),
      SchemaProperty('status', RealmPropertyType.int),
      SchemaProperty('createdAt', RealmPropertyType.timestamp),
      SchemaProperty('updatedAt', RealmPropertyType.timestamp),
      SchemaProperty('orders', RealmPropertyType.object,
          linkTarget: 'PosOrder', collectionType: RealmCollectionType.list),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}
