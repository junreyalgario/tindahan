// ignore_for_file: unused_element

import 'package:realm/realm.dart';
import 'package:tienda_pos/feature/inventory/data/models/product/product.dart';

part 'inventory.realm.dart';

@RealmModel()
class $Inventory {
  @PrimaryKey()
  late int id;
  late double cost;
  late double stocks;
  late $Product? product;
  late DateTime createdAt;
  late DateTime updatedAt;

  // Convert Realm object to JSON
  // `serializeProduct` parameter controls whether the `product` field should be serialized.
  Map<String, dynamic> toJson({required bool serializeProduct}) {
    return {
      'id': id,
      'cost': cost,
      'stocks': stocks,
      'product': serializeProduct ? product?.toJson() : null,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
    };
  }

  static Inventory fromJson(Map<String, dynamic> json) {
    return Inventory(
      json['id'],
      json['cost'],
      json['stocks'],
      DateTime.parse(json['createdAt']),
      DateTime.parse(json['updatedAt']),
      product:
          json['product'] != null ? $Product.fromJson(json['product']) : null,
    );
  }
}
