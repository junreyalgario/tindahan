import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:realm/realm.dart';
import 'package:tienda_pos/feature/inventory/data/models/category/category.dart';
import 'package:tienda_pos/feature/inventory/data/models/product/product.dart';

final _realmSchemas = [
  Category.schema,
  Product.schema,
];

// Define the Realm provider for DI
final realmProvider = Provider<Realm>((ref) {
  final realm = Realm(Configuration.local(_realmSchemas));
  return realm;
});
