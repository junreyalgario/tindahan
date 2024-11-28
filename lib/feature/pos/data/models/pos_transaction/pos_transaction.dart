// ignore_for_file: unused_element

import 'package:realm/realm.dart';
import 'package:tienda_pos/feature/pos/data/models/pos_order/pos_order.dart';
import 'package:tienda_pos/feature/pos/domain/entities/pos_order/pos_order_entity.dart';

part 'pos_transaction.realm.dart';

@RealmModel()
class $PosTransaction {
  @PrimaryKey()
  late int id;
  late double totalQuantity;
  late double totalAmount;
  late double vat;
  late double payable;
  late double amountReceived;
  late double change;
  late int status;
  late DateTime createdAt;
  late DateTime updatedAt;
  late List<$PosOrder> orders;

  // Convert Realm object to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'totalQuantity': totalQuantity,
      'totalAmount': totalAmount,
      'vat': vat,
      'payable': payable,
      'amountReceived': amountReceived,
      'change': change,
      'status': status,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
      'orders': orders
          .map((order) => order.toJson(serializeTransaction: false))
          .toList(),
    };
  }

  // Create Realm object from JSON
  static PosTransaction fromJson(Map<String, dynamic> json) {
    return PosTransaction(
      json['id'],
      json['totalQuantity'],
      json['totalAmount'],
      json['vat'],
      json['payable'],
      json['amountReceived'],
      json['change'],
      json['status'] == 'pending' ? 0 : 1,
      DateTime.parse(json['createdAt']),
      DateTime.parse(json['updatedAt']),
      orders: (json['orders'] as List)
          .map(
              (order) => $PosOrder.fromJson((order as PosOrderEntity).toJson()))
          .toList(),
    );
  }
}
