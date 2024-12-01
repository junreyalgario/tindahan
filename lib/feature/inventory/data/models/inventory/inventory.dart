// ignore_for_file: unused_element

import 'package:realm/realm.dart';
import 'package:tienda_pos/feature/inventory/data/models/inventory_transaction/inventory_transaction.dart';
import 'package:tienda_pos/feature/inventory/data/models/product/product.dart';
import 'package:tienda_pos/feature/inventory/domain/entities/inventory_transaction/inventory_transaction_entity.dart';
import 'package:tienda_pos/feature/inventory/domain/entities/product/product_entity.dart';

part 'inventory.realm.dart';

@RealmModel()
class $Inventory {
  @PrimaryKey()
  late int id;
  late double currentCost;
  late double wac;
  late double stockLevel;
  late double reorderLevel;
  late DateTime lastStockUpdate;
  late DateTime createdAt;
  late DateTime updatedAt;
  late $Product? product;
  late List<$InventoryTransaction> transactions;

  // Convert Realm object to JSON
  // `serializeProduct` parameter controls whether the `product` field should be serialized.
  Map<String, dynamic> toJson({required bool serializeProduct}) {
    return {
      'id': id,
      'currentCost': currentCost,
      'wac': wac,
      'stockLevel': stockLevel,
      'reorderLevel': reorderLevel,
      'lastStockUpdate': lastStockUpdate.toIso8601String(),
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
      'product': serializeProduct ? product?.toJson() : null,
      'transactions': transactions
          .map((transaction) => transaction.toJson(serializeInventory: false))
          .toList(),
    };
  }

  static Inventory fromJson(Map<String, dynamic> json) {
    return Inventory(
      json['id'],
      json['currentCost'],
      json['wac'],
      json['stockLevel'],
      json['reorderLevel'],
      DateTime.parse(json['lastStockUpdate']),
      DateTime.parse(json['createdAt']),
      DateTime.parse(json['updatedAt']),
      product: json['product'] != null
          ? $Product.fromJson((json['product'] as ProductEntity).toJson())
          : null,
      transactions: (json['transactions'] as List)
          .map((transaction) => $InventoryTransaction
              .fromJson((transaction as InventoryTransactionEntity).toJson()))
          .toList(),
    );
  }
}
