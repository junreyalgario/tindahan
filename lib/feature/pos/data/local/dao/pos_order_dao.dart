import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:realm/realm.dart';
import 'package:tienda_pos/core/data/dao.dart';
import 'package:tienda_pos/core/providers/realm_provider.dart';
import 'package:tienda_pos/feature/pos/data/models/pos_order/pos_order.dart';

class PosOrderDao extends Dao<PosOrder> {
  PosOrderDao({required Realm realm}) : super(realm);

  @override
  int getNextId() {
    final PosOrder? order = getLastInserted();
    return order != null ? (order.id + 1) : 1;
  }
}

final posOrderDaoProvider = Provider<PosOrderDao>((ref) {
  return PosOrderDao(realm: ref.read(realmProvider));
});
