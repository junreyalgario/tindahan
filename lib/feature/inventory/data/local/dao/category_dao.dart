import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:realm/realm.dart';
import 'package:tienda_pos/core/data/dao.dart';
import 'package:tienda_pos/core/providers/realm_provider.dart';
import 'package:tienda_pos/core/utils/logger.dart';
import 'package:tienda_pos/feature/inventory/data/models/category/category.dart';

class CategoryDao extends Dao<Category> {
  final Realm _realm;

  CategoryDao(this._realm) : super(_realm);

  @override
  int getNextId() {
    final Category? category = getLastInserted();
    return category != null ? (category.id + 1) : 1;
  }

  @override
  void update(Category model) {
    _realm.write(() {
      final Category? category =
          _realm.query<Category>('id == \$0', [model.id]).firstOrNull;

      if (category != null) {
        category.name = model.name;
      } else {
        Log.error('Failed to update category: ID not found (${model.id})');
        throw Exception(
            'Failed to update category: ID not found (${model.id})');
      }
    });
  }

  @override
  void delete(int id) {
    Category? category = _realm.find<Category>(id);
    if (category != null) {
      _realm.write(() {
        _realm.delete(category);
      });
    } else {
      Log.error('Failed to delete category: ID not found ($id)');
      throw Exception('Failed to delete category: ID not found ($id)');
    }
  }
}

final categoryDaoProvider = Provider<CategoryDao>((ref) {
  final realm = ref.read(realmProvider);
  return CategoryDao(realm);
});
