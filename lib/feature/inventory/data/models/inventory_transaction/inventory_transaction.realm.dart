// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_transaction.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

// ignore_for_file: type=lint
class InventoryTransaction extends $InventoryTransaction
    with RealmEntity, RealmObjectBase, RealmObject {
  InventoryTransaction(
    int id,
    int trsansactionType,
    double quantity,
    double costPerUnit,
    DateTime trsansactionDate,
    DateTime createdAt,
    DateTime updatedAt, {
    String? vendorName,
    Inventory? inventory,
  }) {
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'trsansactionType', trsansactionType);
    RealmObjectBase.set(this, 'quantity', quantity);
    RealmObjectBase.set(this, 'costPerUnit', costPerUnit);
    RealmObjectBase.set(this, 'trsansactionDate', trsansactionDate);
    RealmObjectBase.set(this, 'vendorName', vendorName);
    RealmObjectBase.set(this, 'createdAt', createdAt);
    RealmObjectBase.set(this, 'updatedAt', updatedAt);
    RealmObjectBase.set(this, 'inventory', inventory);
  }

  InventoryTransaction._();

  @override
  int get id => RealmObjectBase.get<int>(this, 'id') as int;
  @override
  set id(int value) => RealmObjectBase.set(this, 'id', value);

  @override
  int get trsansactionType =>
      RealmObjectBase.get<int>(this, 'trsansactionType') as int;
  @override
  set trsansactionType(int value) =>
      RealmObjectBase.set(this, 'trsansactionType', value);

  @override
  double get quantity =>
      RealmObjectBase.get<double>(this, 'quantity') as double;
  @override
  set quantity(double value) => RealmObjectBase.set(this, 'quantity', value);

  @override
  double get costPerUnit =>
      RealmObjectBase.get<double>(this, 'costPerUnit') as double;
  @override
  set costPerUnit(double value) =>
      RealmObjectBase.set(this, 'costPerUnit', value);

  @override
  DateTime get trsansactionDate =>
      RealmObjectBase.get<DateTime>(this, 'trsansactionDate') as DateTime;
  @override
  set trsansactionDate(DateTime value) =>
      RealmObjectBase.set(this, 'trsansactionDate', value);

  @override
  String? get vendorName =>
      RealmObjectBase.get<String>(this, 'vendorName') as String?;
  @override
  set vendorName(String? value) =>
      RealmObjectBase.set(this, 'vendorName', value);

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
  Inventory? get inventory =>
      RealmObjectBase.get<Inventory>(this, 'inventory') as Inventory?;
  @override
  set inventory(covariant Inventory? value) =>
      RealmObjectBase.set(this, 'inventory', value);

  @override
  Stream<RealmObjectChanges<InventoryTransaction>> get changes =>
      RealmObjectBase.getChanges<InventoryTransaction>(this);

  @override
  Stream<RealmObjectChanges<InventoryTransaction>> changesFor(
          [List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<InventoryTransaction>(this, keyPaths);

  @override
  InventoryTransaction freeze() =>
      RealmObjectBase.freezeObject<InventoryTransaction>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'id': id.toEJson(),
      'trsansactionType': trsansactionType.toEJson(),
      'quantity': quantity.toEJson(),
      'costPerUnit': costPerUnit.toEJson(),
      'trsansactionDate': trsansactionDate.toEJson(),
      'vendorName': vendorName.toEJson(),
      'createdAt': createdAt.toEJson(),
      'updatedAt': updatedAt.toEJson(),
      'inventory': inventory.toEJson(),
    };
  }

  static EJsonValue _toEJson(InventoryTransaction value) => value.toEJson();
  static InventoryTransaction _fromEJson(EJsonValue ejson) {
    if (ejson is! Map<String, dynamic>) return raiseInvalidEJson(ejson);
    return switch (ejson) {
      {
        'id': EJsonValue id,
        'trsansactionType': EJsonValue trsansactionType,
        'quantity': EJsonValue quantity,
        'costPerUnit': EJsonValue costPerUnit,
        'trsansactionDate': EJsonValue trsansactionDate,
        'createdAt': EJsonValue createdAt,
        'updatedAt': EJsonValue updatedAt,
      } =>
        InventoryTransaction(
          fromEJson(id),
          fromEJson(trsansactionType),
          fromEJson(quantity),
          fromEJson(costPerUnit),
          fromEJson(trsansactionDate),
          fromEJson(createdAt),
          fromEJson(updatedAt),
          vendorName: fromEJson(ejson['vendorName']),
          inventory: fromEJson(ejson['inventory']),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(InventoryTransaction._);
    register(_toEJson, _fromEJson);
    return const SchemaObject(
        ObjectType.realmObject, InventoryTransaction, 'InventoryTransaction', [
      SchemaProperty('id', RealmPropertyType.int, primaryKey: true),
      SchemaProperty('trsansactionType', RealmPropertyType.int),
      SchemaProperty('quantity', RealmPropertyType.double),
      SchemaProperty('costPerUnit', RealmPropertyType.double),
      SchemaProperty('trsansactionDate', RealmPropertyType.timestamp),
      SchemaProperty('vendorName', RealmPropertyType.string, optional: true),
      SchemaProperty('createdAt', RealmPropertyType.timestamp),
      SchemaProperty('updatedAt', RealmPropertyType.timestamp),
      SchemaProperty('inventory', RealmPropertyType.object,
          optional: true, linkTarget: 'Inventory'),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}
