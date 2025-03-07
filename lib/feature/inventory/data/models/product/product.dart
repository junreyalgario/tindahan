import 'package:realm/realm.dart';
import 'package:tienda_pos/feature/inventory/data/models/category/category.dart';
import 'package:tienda_pos/feature/inventory/data/models/inventory/inventory.dart';
import 'package:tienda_pos/feature/inventory/data/models/uom/uom.dart';
import 'package:tienda_pos/feature/inventory/domain/entities/category/category_entity.dart';
import 'package:tienda_pos/feature/inventory/domain/entities/inventory/inventory_entity.dart';
import 'package:tienda_pos/feature/inventory/domain/entities/uom/uom_entity.dart';
import 'package:tienda_pos/feature/pos/data/models/pos_order/pos_order.dart';
import 'package:tienda_pos/feature/pos/domain/entities/pos_order/pos_order_entity.dart';

part 'product.realm.dart';

@RealmModel()
class $Product {
  @PrimaryKey()
  late int id;
  late String photo;
  late String name;
  late double price;
  late DateTime createdAt;
  late DateTime updatedAt;
  late $Category? category;
  late $Uom? uom;
  late $Inventory? inventory;
  late List<$PosOrder> orders;

  // Convert Realm object to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'photo': photo,
      'name': name,
      'price': price,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
      'category': category?.toJson(),
      'uom': uom?.toJson(),
      'inventory': inventory!.toJson(serializeProduct: false),
      'orders':
          orders.map((order) => order.toJson(serializeProduct: false)).toList(),
    };
  }

  // Method to create the object from JSON
  static Product fromJson(Map<String, dynamic> json) {
    return Product(
      json['id'],
      json['photo'],
      json['name'],
      json['price'],
      DateTime.parse(json['createdAt']),
      DateTime.parse(json['updatedAt']),
      category: json['category'] != null
          ? $Category.fromJson((json['category'] as CategoryEntity).toJson())
          : null,
      uom: json['uom'] != null
          ? $Uom.fromJson((json['uom'] as UomEntity).toJson())
          : null,
      inventory:
          $Inventory.fromJson((json['inventory'] as InventoryEntity).toJson()),
      orders: json['orders'] != null
          ? (json['orders'] as List)
              .map((order) =>
                  $PosOrder.fromJson((order as PosOrderEntity).toJson()))
              .toList()
          : [],
    );
  }
}
