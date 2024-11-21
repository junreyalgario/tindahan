import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:realm/realm.dart';
import 'package:tienda_pos/core/constant/strings.dart';
import 'package:tienda_pos/feature/inventory/data/local/dao/dao.dart';
import 'package:tienda_pos/feature/inventory/data/local/dao/realm_provider.dart';
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
      throw Exception(AppString.uom_failed_delete);
    }
  }

  @override
  int getNextId() {
    final Uom? uom = getLastInserted();
    return uom != null ? (uom.id + 1) : 0;
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
        throw Exception(AppString.uom_failed_update);
      }
    });
  }
}

final uomDaoProvider = Provider<UomDao>((ref) {
  final realm = ref.read(realmProvider);
  return UomDao(realm);
});
