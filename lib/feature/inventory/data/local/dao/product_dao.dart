import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:realm/realm.dart';
import 'package:tienda_pos/core/data/dao.dart';
import 'package:tienda_pos/core/providers/realm_provider.dart';
import 'package:tienda_pos/core/utils/logger.dart';
import 'package:tienda_pos/feature/inventory/data/models/product/product.dart';

class ProductDao extends Dao<Product> {
  final Realm _realm;

  ProductDao({
    required Realm realm,
  })  : _realm = realm,
        super(realm);

  @override
  void delete(int id) {
    Product? product = _realm.find<Product>(id);
    if (product != null) {
      _realm.write(() {
        _realm.delete(product);
      });
    } else {
      Log.error('Failed to delete product: ID not found ($id)');
      throw Exception('Failed to delete product: ID not found ($id)');
    }
  }

  @override
  int getNextId() {
    final Product? product = getLastInserted();
    return product != null ? (product.id + 1) : 1;
  }

  @override
  void update(Product model) {
    _realm.write(() {
      final Product? product =
          _realm.query<Product>('id == \$0', [model.id]).firstOrNull;

      if (product != null) {
        product.name = model.name;
        product.price = model.price;
        product.lowStockLevel = model.lowStockLevel;
        product.category = model.category;
        product.uom = model.uom;
        product.inventories = model.inventories;
      } else {
        Log.error('Failed to update product: ID not found (${model.id})');
        throw Exception('Failed to update product: ID not found (${model.id})');
      }
    });
  }
}

final productDaoProvider = Provider<ProductDao>((ref) {
  final realm = ref.read(realmProvider);
  return ProductDao(realm: realm);
});
