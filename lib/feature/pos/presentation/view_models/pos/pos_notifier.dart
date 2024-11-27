import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tienda_pos/core/utils/logger.dart';
import 'package:tienda_pos/feature/inventory/domain/entities/category/category_entity.dart';
import 'package:tienda_pos/feature/pos/domain/entities/pos_item/pos_item_entity.dart';
import 'package:tienda_pos/feature/pos/domain/usecases/pos_usecase.dart';
import 'package:tienda_pos/feature/pos/presentation/view_models/cart/cart_notifier.dart';
import 'package:tienda_pos/feature/pos/presentation/view_models/cart/cart_state.dart';
import 'package:tienda_pos/feature/pos/presentation/view_models/pos/pos_state.dart';
import 'package:tienda_pos/feature/pos/presentation/view_models/pos_category/pos_category_notifier.dart';
import 'package:tienda_pos/feature/pos/presentation/view_models/pos_category/pos_category_state.dart';
import 'package:tienda_pos/feature/pos/providers/pos_providers.dart';

class PosNotifier extends StateNotifier<PosState> {
  final PosUsecase _posUsecase;
  final PosCategoryNotifier _categoryNotifier;
  final CartNotifier _cartNotifier;

  PosNotifier({
    required PosUsecase posUsecase,
    required PosCategoryNotifier categoryNotifier,
    required CartNotifier cartNotifier,
  })  : _posUsecase = posUsecase,
        _categoryNotifier = categoryNotifier,
        _cartNotifier = cartNotifier,
        super(const PosState()) {
    _categoryNotifier.addListener(_onCategoryStateChanged);
    _cartNotifier.addListener(_onCartStateChanged);
    _initPosItems();
  }

  void _initPosItems() async {
    final result = await _posUsecase.getPosItems();
    if (result.isSuccess) {
      state = state.copyWith(items: result.data!, allItems: result.data!);
    }
  }

  void _onCartStateChanged(CartState cartState) {
    List<PosItemEntity> updateItems(List<PosItemEntity> originalItems) {
      return originalItems.map((item) {
        final String key = item.product!.id.toString();
        return cartState.posItems.containsKey(key)
            ? cartState.posItems[key]!
            : item.copyWith(orderCount: 0, subTotalAmount: 0);
      }).toList();
    }

    final updatedAllItems = updateItems(state.allItems);
    late List<PosItemEntity> updatedItems;
    CategoryEntity? activeCategory = _categoryNotifier.getActiveCategory();

    if (activeCategory != null && activeCategory.id! == -1) {
      updatedItems = _getFilteredItems(activeCategory);
    } else {
      updatedItems = updateItems(state.items);
    }

    state = state.copyWith(allItems: updatedAllItems, items: updatedItems);
  }

  void _onCategoryStateChanged(PosCategoryState catState) {
    if (catState.activeCategory == null) return;
    final filteredItems = _getFilteredItems(catState.activeCategory!);
    state = state.copyWith(items: filteredItems);
  }

  void searchProduct(String query) {
    if (query.isEmpty) {
      state = state.copyWith(items: state.allItems);
      return;
    }

    List<PosItemEntity> items = state.allItems.where((item) {
      return item.product!.name!.toLowerCase().contains(query.toLowerCase()) ||
          item.product!.category!.name!
              .toLowerCase()
              .contains(query.toLowerCase()) ||
          item.product!.uom!.name!
              .toLowerCase()
              .contains(query.toLowerCase()) ||
          item.product!.uom!.symbol!
              .toLowerCase()
              .contains(query.toLowerCase());
    }).toList();

    state = state.copyWith(items: items);
  }

  List<PosItemEntity> _getFilteredItems(CategoryEntity activeCategory) {
    return state.allItems.where((item) {
      if (activeCategory.id == 0) return true; // All items
      if (activeCategory.id == -1) return item.orderCount > 0; // Ordered items
      return item.product!.category!.id ==
          activeCategory.id; // Filter by category
    }).toList();
  }
}

final posNotifierProvider =
    StateNotifierProvider.autoDispose<PosNotifier, PosState>((ref) {
  return PosNotifier(
    posUsecase: ref.read(posUsecaseProvider),
    categoryNotifier: ref.read(posCategoryNotifierProvider.notifier),
    cartNotifier: ref.watch(cartNotifierProvider.notifier),
  );
});
