import 'package:realm/realm.dart';
import 'package:tienda_pos/feature/inventory/data/models/category/category.dart';
import 'package:tienda_pos/feature/inventory/data/models/inventory/inventory.dart';
import 'package:tienda_pos/feature/inventory/data/models/uom/uom.dart';

part 'product.realm.dart';

@RealmModel()
class $Product {
  @PrimaryKey()
  late int id;
  String? photo;
  late String name;
  late double price;
  late double cost;
  late $Category? category;
  late $Uom? uom;
  late List<$Inventory> inventories;
  late DateTime createdAt;
  late DateTime updatedAt;

  // Convert Realm object to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'photo': photo,
      'name': name,
      'price': price,
      'cost': cost,
      'category': category?.toJson(),
      'uom': uom?.toJson(),
      'inventories':
          inventories.map((inventory) => inventory.toJson()).toList(),
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
      json['cost'],
      DateTime.parse(json['createdAt']),
      DateTime.parse(json['updatedAt']),
      photo: json['photo'],
      category: json['category'] != null
          ? $Category.fromJson(json['category'])
          : null,
      uom: json['uom'] != null ? $Uom.fromJson(json['uom']) : null,
      inventories: (json['inventories'] as List)
          .map((inventory) => $Inventory.fromJson(inventory))
          .toList(),
    );
  }
}
