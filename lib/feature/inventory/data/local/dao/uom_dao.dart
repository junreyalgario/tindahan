import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:realm/realm.dart';
import 'package:tienda_pos/core/data/dao.dart';
import 'package:tienda_pos/core/providers/realm_provider.dart';
import 'package:tienda_pos/core/utils/logger.dart';
import 'package:tienda_pos/feature/inventory/data/models/uom/uom.dart';

class UomDao extends Dao<Uom> {
  final Realm _realm;

  UomDao(this._realm) : super(_realm);

  @override
  void delete(int id) {
    Uom? uom = _realm.find<Uom>(id);
    if (uom != null) {
      _realm.write(() {
        _realm.delete(uom);
      });
    } else {
      Log.error('Failed to update UOM: ID not found ($id)');
      throw Exception('Failed to update UOM: ID not found ($id)');
    }
  }

  @override
  int getNextId() {
    final Uom? uom = getLastInserted();
    return uom != null ? (uom.id + 1) : 1;
  }

  @override
  void update(Uom model) {
    _realm.write(() {
      final Uom? uom = _realm.query<Uom>('id == \$0', [model.id]).firstOrNull;

      if (uom != null) {
        uom.name = model.name;
        uom.symbol = model.symbol;
        uom.uom = model.uom;
      } else {
        Log.error('Failed to update UOM: ID not found (${model.id})');
        throw Exception('Failed to update UOM: ID not found (${model.id})');
      }
    });
  }
}

final uomDaoProvider = Provider<UomDao>((ref) {
  final realm = ref.read(realmProvider);
  return UomDao(realm);
});
