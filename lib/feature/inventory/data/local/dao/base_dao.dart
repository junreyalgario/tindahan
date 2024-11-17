import 'dart:developer';

import 'package:realm/realm.dart';

abstract class BaseDao<T extends RealmObject> {
  final Realm _realm;

  BaseDao(this._realm);

  void save(T t) {
    _realm.write(() {
      _realm.add(t, update: true);
    });
  }

  List<T> getAll() {
    final List<T> data = _realm.all<T>().toList();
    log('DAO getAll() ->> $data');
    return data;
  }
}
