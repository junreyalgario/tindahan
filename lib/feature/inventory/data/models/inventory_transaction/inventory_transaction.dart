// ignore_for_file: unused_element

import 'package:realm/realm.dart';
import 'package:tienda_pos/feature/inventory/data/models/inventory/inventory.dart';
import 'package:tienda_pos/feature/inventory/domain/entities/inventory/inventory_entity.dart';
import 'package:tienda_pos/feature/inventory/domain/entities/inventory_transaction/inventory_transaction_entity.dart';

part 'inventory_transaction.realm.dart';

@RealmModel()
class $InventoryTransaction {
  @PrimaryKey()
  late int id;
  late int trsansactionType;
  late double quantity;
  late double costPerUnit;
  late DateTime trsansactionDate;
  late String? vendorName;
  late DateTime createdAt;
  late DateTime updatedAt;
  late $Inventory? inventory;

  // Convert Realm object to JSON
  Map<String, dynamic> toJson({required bool serializeInventory}) {
    return {
      'id': id,
      'trsansactionType': 1,
      'quantity': quantity,
      'costPerUnit': costPerUnit,
      'trsansactionDate': trsansactionDate.toIso8601String(),
      'vendorName': vendorName,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
      'inventory': serializeInventory
          ? inventory?.toJson(serializeProduct: false)
          : null,
    };
  }

  static InventoryTransaction fromJson(Map<String, dynamic> json) {
    return InventoryTransaction(
      json['id'],
      json['trsansactionType'],
      json['quantity'],
      json['costPerUnit'],
      DateTime.parse(json['trsansactionDate']),
      DateTime.parse(json['createdAt']),
      DateTime.parse(json['updatedAt']),
      vendorName: json['vendorName'],
      inventory: json['inventory'] != null
          ? $Inventory.fromJson((json['inventory'] as InventoryEntity).toJson())
          : null,
    );
  }
}
