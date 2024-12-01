import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:realm/realm.dart';
import 'package:tienda_pos/core/data/dao.dart';
import 'package:tienda_pos/core/providers/realm_provider.dart';
import 'package:tienda_pos/feature/inventory/data/models/inventory_transaction/inventory_transaction.dart';

class InventoryTransactionDao extends Dao<InventoryTransaction> {
  final Realm _realm;

  InventoryTransactionDao({required Realm realm})
      : _realm = realm,
        super(realm);

  @override
  int getNextId() {
    final InventoryTransaction? transaction = getLastInserted();
    return transaction != null ? (transaction.id + 1) : 1;
  }
}

final inventoryTransactionDaoProvider =
    Provider<InventoryTransactionDao>((ref) {
  return InventoryTransactionDao(realm: ref.read(realmProvider));
});
