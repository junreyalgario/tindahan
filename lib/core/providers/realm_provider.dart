import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:realm/realm.dart';
import 'package:tienda_pos/feature/inventory/data/models/category/category.dart';
import 'package:tienda_pos/feature/inventory/data/models/inventory/inventory.dart';
import 'package:tienda_pos/feature/inventory/data/models/inventory_transaction/inventory_transaction.dart';
import 'package:tienda_pos/feature/inventory/data/models/product/product.dart';
import 'package:tienda_pos/feature/inventory/data/models/uom/uom.dart';
import 'package:tienda_pos/feature/pos/data/models/pos_order/pos_order.dart';
import 'package:tienda_pos/feature/pos/data/models/pos_transaction/pos_transaction.dart';

final _realmSchemas = [
  Category.schema,
  Product.schema,
  Uom.schema,
  Inventory.schema,
  InventoryTransaction.schema,
  PosOrder.schema,
  PosTransaction.schema,
];

// Define the Realm provider for DI
final realmProvider = Provider<Realm>((ref) {
  final realm = Realm(Configuration.local(_realmSchemas));
  return realm;
});
