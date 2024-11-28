import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:realm/realm.dart';
import 'package:tienda_pos/core/data/dao.dart';
import 'package:tienda_pos/core/providers/realm_provider.dart';
import 'package:tienda_pos/feature/pos/data/models/pos_transaction/pos_transaction.dart';

class PosTransactionDao extends Dao<PosTransaction> {
  PosTransactionDao({required Realm realm}) : super(realm);

  @override
  int getNextId() {
    final PosTransaction? transaction = getLastInserted();
    return transaction != null ? (transaction.id + 1) : 1;
  }
}

final posTransactionDaoProvider = Provider<PosTransactionDao>((ref) {
  return PosTransactionDao(realm: ref.read(realmProvider));
});
