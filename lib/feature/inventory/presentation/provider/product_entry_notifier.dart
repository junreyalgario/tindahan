import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tienda_pos/core/state/data_state.dart';
import 'package:tienda_pos/feature/inventory/domain/entities/category/category_entity.dart';
import 'package:tienda_pos/feature/inventory/domain/usecases/category/category_usecase.dart';

class ProductEntryNotifier extends StateNotifier<bool> {
  ProductEntryNotifier(this._categoryUsecase) : super(true);

  final CategoryUsecase _categoryUsecase;

  Future<DataState<bool>> saveCategory() async {
    return _categoryUsecase.save(categoryEntity: const CategoryEntity());
  }
}

final productEntryProvider =
    StateNotifierProvider<ProductEntryNotifier, bool>((ref) {
  final categoryUseCase = ref.read(categoryUseCaseProvider);
  return ProductEntryNotifier(categoryUseCase);
});
