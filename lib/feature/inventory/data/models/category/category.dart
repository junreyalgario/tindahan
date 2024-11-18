// ignore_for_file: unused_element

import 'package:realm/realm.dart';

part 'category.realm.dart';

@RealmModel()
class _Category {
  @PrimaryKey()
  late int id;
  late String name;
  late DateTime createdAt;
  late DateTime updatedAt;

  // Convert Realm object to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
    };
  }
}

// Create Realm object from JSON
Category createCategoryfromJson(Map<String, dynamic> json) {
  return Category(
    json['id'],
    json['name'],
    DateTime.parse(json['createdAt']),
    DateTime.parse(json['updatedAt']),
  );
}
