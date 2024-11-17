import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:realm/realm.dart';
import 'package:tienda_pos/feature/inventory/data/local/dao/base_dao.dart';
import 'package:tienda_pos/feature/inventory/data/local/dao/realm_provider.dart';
import 'package:tienda_pos/feature/inventory/data/models/category/category.dart';

class CategoryDao extends BaseDao<Category> {
  final Realm _realm;

  CategoryDao(this._realm) : super(_realm);
}

final categoryDaoProvider = Provider<CategoryDao>((ref) {
  final realm = ref.read(realmProvider);
  return CategoryDao(realm);
});
