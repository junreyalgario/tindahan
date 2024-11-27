import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
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
  Timer? _debounce;

  // Constructor to initialize PosNotifier with dependencies like PosUsecase, PosCategoryNotifier, and CartNotifier.
  PosNotifier({
    required PosUsecase posUsecase,
    required PosCategoryNotifier categoryNotifier,
    required CartNotifier cartNotifier,
  })  : _posUsecase = posUsecase,
        _categoryNotifier = categoryNotifier,
        _cartNotifier = cartNotifier,
        super(const PosState()) {
    // Adding listeners to respond to changes in category or cart state
    _categoryNotifier.addListener(_onCategoryStateChanged);
    _cartNotifier.addListener(_onCartStateChanged);
    // Initialize POS items when the PosNotifier is created
    _initPosItems();
  }

  // Initializes POS items by fetching them using the PosUsecase
  void _initPosItems() async {
    final result = await _posUsecase.getPosItems();
    if (result.isSuccess) {
      // Update the state with fetched items if the call is successful
      state = state.copyWith(
        items: result.data!,
        allItems: result.data!,
        originalItems: result.data!,
      );
    }
  }

  // Called when a POS item changes, updates the state with the modified item
  void onPosItemChange(PosItemEntity posItem) {
    // Helper function to update items based on the product ID
    List<PosItemEntity> updateItems(List<PosItemEntity> originalItems) {
      return originalItems.map((item) {
        return item.product!.id! == posItem.product!.id! ? posItem : item;
      }).toList();
    }

    // Update all, original, and regular items lists with the changed POS item
    final allItems = updateItems(state.allItems);
    final originalItems = updateItems(state.originalItems);
    final items = updateItems(state.items);

    state = state.copyWith(
        allItems: allItems, originalItems: originalItems, items: items);
  }

  // Responds to changes in the cart state, adjusting the POS items based on the cart content
  void _onCartStateChanged(CartState cartState) {
    // Helper function to update items based on the cart state
    List<PosItemEntity> updateItems(List<PosItemEntity> originalItems) {
      return originalItems.map((item) {
        final String key = item.product!.id.toString();
        return cartState.posItems.containsKey(key)
            ? cartState.posItems[key]!
            : item.copyWith(orderCount: 0, subTotalAmount: 0);
      }).toList();
    }

    // Update all items in the state based on the cart state
    final updatedAllItems = updateItems(state.allItems);
    late List<PosItemEntity> updatedItems;

    // Get the active category to filter the items if necessary
    CategoryEntity? activeCategory = _categoryNotifier.getActiveCategory();

    // If an active category exists and is 'All', filter accordingly
    if (activeCategory != null && activeCategory.id! == -1) {
      updatedItems = _getFilteredItems(activeCategory);
    } else {
      updatedItems = updateItems(state.items);
    }

    // Update the state with the modified items based on the cart changes
    state = state.copyWith(
      allItems: updatedAllItems,
      items: updatedItems,
      originalItems: updatedItems,
    );
  }

  // Responds to category state changes, updating the displayed items
  void _onCategoryStateChanged(PosCategoryState catState) {
    // If no active category is selected, return early
    if (catState.activeCategory == null) return;

    // Get filtered items based on the active category
    final filteredItems = _getFilteredItems(catState.activeCategory!);
    // Update the state with filtered items
    state = state.copyWith(items: filteredItems, originalItems: filteredItems);
  }

  // Handles search query changes with debounce to optimize search performance
  void onSearchChanged(String query) {
    // Cancel any ongoing debounce before starting a new one
    if (_debounce?.isActive ?? false) _debounce!.cancel();
    _debounce = Timer(const Duration(milliseconds: 300), () {
      _searchProduct(query); // Call search logic after a brief delay
    });
  }

  // Searches for products based on the query string and updates the state
  void _searchProduct(String query) {
    if (query.isEmpty) {
      // If the query is empty, reset to the original list of items
      state = state.copyWith(items: state.originalItems);
      return;
    }

    // Filter items based on the search query
    List<PosItemEntity> items = state.originalItems.where((item) {
      query = query.toLowerCase();
      // Check if the product or its attributes match the search query
      return item.product!.name!.toLowerCase().contains(query) ||
          item.product!.category!.name!.toLowerCase().contains(query) ||
          item.product!.price!.toString().toLowerCase().contains(query) ||
          item.product!.uom!.name!.toLowerCase().contains(query) ||
          item.product!.uom!.symbol!.toLowerCase().contains(query);
    }).toList();

    // Update the state with the filtered items
    state = state.copyWith(items: items);
  }

  // Filters items based on the active category (e.g., show only items belonging to a category)
  List<PosItemEntity> _getFilteredItems(CategoryEntity activeCategory) {
    return state.allItems.where((item) {
      if (activeCategory.id == 0) {
        return true; // Show all items if category ID is 0
      }
      if (activeCategory.id == -1) {
        return item.orderCount >
            0; // Show ordered items only if category ID is -1
      }
      return item.product!.category!.id ==
          activeCategory.id; // Filter by specific category
    }).toList();
  }
}

// Provider to manage the state of PosNotifier and inject dependencies like PosUsecase and other providers
final posNotifierProvider =
    StateNotifierProvider.autoDispose<PosNotifier, PosState>((ref) {
  return PosNotifier(
    posUsecase: ref.read(posUsecaseProvider),
    categoryNotifier: ref.read(posCategoryNotifierProvider.notifier),
    cartNotifier: ref.watch(cartNotifierProvider.notifier),
  );
});
