import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:realm/realm.dart';
import 'package:tienda_pos/core/data/dao.dart';
import 'package:tienda_pos/core/providers/realm_provider.dart';
import 'package:tienda_pos/core/utils/logger.dart';
import 'package:tienda_pos/feature/inventory/data/models/inventory/inventory.dart';

class InventoryDao extends Dao<Inventory> {
  final Realm _realm;

  InventoryDao({required Realm realm})
      : _realm = realm,
        super(realm);

  @override
  int getNextId() {
    final Inventory? inventory = getLastInserted();
    return inventory != null ? (inventory.id + 1) : 1;
  }

  @override
  void update(Inventory model) {
    Inventory? inventory = getById(model.id);

    if (inventory != null) {
      _realm.write(() {
        inventory.currentCost = model.currentCost;
        inventory.wac = model.wac;
        inventory.stockLevel = model.stockLevel;
        inventory.reorderLevel = model.reorderLevel;
        inventory.lastStockUpdate = model.lastStockUpdate;
        inventory.updatedAt = model.updatedAt;
      });
    } else {
      Log.error('Failed to update inventory: ID not found (${model.id})');
      throw Exception('Failed to update inventory: ID not found (${model.id})');
    }
  }
}

final inventoryDaoProvider = Provider<InventoryDao>((ref) {
  return InventoryDao(realm: ref.read(realmProvider));
});
