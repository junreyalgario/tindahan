import 'package:flutter/foundation.dart';
import 'package:realm/realm.dart';

abstract class Dao<Model extends RealmObject> {
  final Realm _realm;

  Dao(this._realm);

  int getNextId();

  void update(Model model) {}

  void delete(int id) {}

  @protected
  Model? getLastInserted() {
    return _realm.query<Model>('TRUEPREDICATE SORT(id DESC)').firstOrNull;
  }

  void save(Model model) {
    _realm.write(() {
      _realm.add(model);
    });
  }

  void saveAll(List<Model> models) {
    _realm.write(() {
      _realm.addAll(models);
    });
  }

  List<Model> getAll() {
    return _realm.all<Model>().toList();
  }

  Model? getById(int id) {
    return _realm.query<Model>('id == \$0', [id]).firstOrNull;
  }
}
