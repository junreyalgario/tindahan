// ignore_for_file: unused_element

import 'package:realm/realm.dart';

part 'uom.realm.dart';

@RealmModel()
class $Uom {
  @PrimaryKey()
  late int id;
  late String name;
  late String symbol;
  late String uom;
  late DateTime createdAt;
  late DateTime updatedAt;

  // Convert Realm object to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'symbol': symbol,
      'uom': uom,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
    };
  }

  // Create Realm object from JSON
  static Uom fromJson(Map<String, dynamic> json) {
    return Uom(
      json['id'],
      json['name'],
      json['symbol'],
      json['uom'],
      DateTime.parse(json['createdAt']),
      DateTime.parse(json['updatedAt']),
    );
  }
}
