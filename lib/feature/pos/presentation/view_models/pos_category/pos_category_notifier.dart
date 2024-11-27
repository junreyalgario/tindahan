import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tienda_pos/feature/inventory/domain/entities/category/category_entity.dart';
import 'package:tienda_pos/feature/inventory/domain/usecases/category_usecase.dart';
import 'package:tienda_pos/feature/inventory/providers/category_providers.dart';
import 'package:tienda_pos/feature/pos/presentation/view_models/pos_category/pos_category_state.dart';

// Notifier to manage the state of POS categories
class PosCategoryNotifier extends StateNotifier<PosCategoryState> {
  final CategoryUsecase _categoryUsecase;

  // Constructor initializes the usecase and triggers setting categories
  PosCategoryNotifier({required CategoryUsecase categoryUsecase})
      : _categoryUsecase = categoryUsecase,
        super(const PosCategoryState()) {
    setCategories(); // Load categories when the notifier is created
  }

  // Fetches categories and updates the state with the result
  void setCategories() async {
    final result = await _categoryUsecase.getPosCategories();
    if (result.isSuccess) {
      // Update state with fetched categories and set the first category as active if available
      state = state.copyWith(
        categories: result.data!,
        activeCategory: result.data!.isNotEmpty ? result.data![0] : null,
      );
    }
  }

  // Sets the active category in the state
  void setActiveCategory(CategoryEntity? category) {
    state = state.copyWith(activeCategory: category);
  }

  // Returns the currently active category
  CategoryEntity? getActiveCategory() {
    return state.activeCategory;
  }
}

// Provider to access the PosCategoryNotifier and its state
final posCategoryNotifierProvider =
    StateNotifierProvider.autoDispose<PosCategoryNotifier, PosCategoryState>(
        (ref) {
  return PosCategoryNotifier(
      categoryUsecase:
          ref.read(categoryUseCaseProvider)); // Injects the category usecase
});
