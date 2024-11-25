import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:realm/realm.dart';
import 'package:tienda_pos/core/data/dao.dart';
import 'package:tienda_pos/core/providers/realm_provider.dart';
import 'package:tienda_pos/feature/inventory/data/models/inventory/inventory.dart';

class InventoryDao extends Dao<Inventory> {
  final Realm _realm;

  InventoryDao({required Realm realm})
      : _realm = realm,
        super(realm);

  @override
  void delete(int id) {
    // TODO: implement delete
  }

  @override
  int getNextId() {
    final Inventory? inventory = getLastInserted();
    return inventory != null ? (inventory.id + 1) : 1;
  }

  @override
  void update(Inventory model) {
    // TODO: implement update
  }
}

final inventoryDaoProvider = Provider<InventoryDao>((ref) {
  return InventoryDao(realm: ref.read(realmProvider));
});
