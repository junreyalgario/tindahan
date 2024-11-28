// ignore_for_file: unused_element

import 'package:realm/realm.dart';
import 'package:tienda_pos/feature/inventory/data/models/product/product.dart';
import 'package:tienda_pos/feature/inventory/domain/entities/product/product_entity.dart';
import 'package:tienda_pos/feature/pos/data/models/pos_transaction/pos_transaction.dart';
import 'package:tienda_pos/feature/pos/domain/entities/pos_transaction/pos_transaction_entity.dart';

part 'pos_order.realm.dart';

@RealmModel()
class $PosOrder {
  @PrimaryKey()
  late int id;
  late $Product? product;
  late double price;
  late double quantity;
  late double amount;
  late DateTime createdAt;
  late DateTime updatedAt;
  late $PosTransaction? transaction;

  // Convert Realm object to JSON
  Map<String, dynamic> toJson(
      {bool serializeTransaction = false, bool serializeProduct = false}) {
    return {
      'id': id,
      'product': serializeProduct && product != null ? product!.toJson() : null,
      'price': price,
      'quantity': quantity,
      'amount': amount,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
      'transaction': serializeTransaction ? transaction?.toJson() : null,
    };
  }

  // Create Realm object from JSON
  static PosOrder fromJson(Map<String, dynamic> json) {
    return PosOrder(
      json['id'],
      json['price'],
      json['quantity'],
      json['amount'],
      DateTime.parse(json['createdAt']),
      DateTime.parse(json['updatedAt']),
      transaction: json['transaction'] != null
          ? $PosTransaction
              .fromJson((json['transaction'] as PosTransactionEntity).toJson())
          : null,
      product: json['product'] != null
          ? $Product.fromJson((json['product'] as ProductEntity).toJson())
          : null,
    );
  }
}
