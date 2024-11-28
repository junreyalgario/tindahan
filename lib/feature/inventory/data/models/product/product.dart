import 'package:realm/realm.dart';
import 'package:tienda_pos/core/utils/logger.dart';
import 'package:tienda_pos/feature/inventory/data/models/category/category.dart';
import 'package:tienda_pos/feature/inventory/data/models/inventory/inventory.dart';
import 'package:tienda_pos/feature/inventory/data/models/uom/uom.dart';
import 'package:tienda_pos/feature/inventory/domain/entities/category/category_entity.dart';
import 'package:tienda_pos/feature/inventory/domain/entities/inventory/inventory_entity.dart';
import 'package:tienda_pos/feature/inventory/domain/entities/uom/uom_entity.dart';
import 'package:tienda_pos/feature/pos/data/models/pos_order/pos_order.dart';

part 'product.realm.dart';

@RealmModel()
class $Product {
  @PrimaryKey()
  late int id;
  String? photo;
  late String name;
  late double price;
  late double lowStockLevel;
  late double stockOnHand;
  late $Category? category;
  late $Uom? uom;
  late List<$Inventory> inventories;
  late List<$PosOrder> orders;
  late DateTime createdAt;
  late DateTime updatedAt;

  // Convert Realm object to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'photo': photo,
      'name': name,
      'price': price,
      'lowStockLevel': lowStockLevel,
      'stockOnHand': stockOnHand,
      'category': category?.toJson(),
      'uom': uom?.toJson(),
      'inventories': inventories
          .map((inventory) => inventory.toJson(serializeProduct: false))
          .toList(),
      'orders':
          orders.map((order) => order.toJson(serializeProduct: false)).toList(),
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
    };
  }

  // Method to create the object from JSON
  static Product fromJson(Map<String, dynamic> json) {
    return Product(
      json['id'],
      json['name'],
      json['price'],
      json['lowStockLevel'],
      json['stockOnHand'],
      DateTime.parse(json['createdAt']),
      DateTime.parse(json['updatedAt']),
      photo: json['photo'],
      category: json['category'] != null
          ? $Category.fromJson((json['category'] as CategoryEntity).toJson())
          : null,
      uom: json['uom'] != null
          ? $Uom.fromJson((json['uom'] as UomEntity).toJson())
          : null,
      inventories: (json['inventories'] as List)
          .map((inventory) =>
              $Inventory.fromJson((inventory as InventoryEntity).toJson()))
          .toList(),
    );
  }
}
