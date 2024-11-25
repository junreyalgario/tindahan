import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tienda_pos/feature/pos/domain/entities/pos_item/pos_item_entity.dart';
import 'package:tienda_pos/feature/pos/presentation/view_models/cart/cart_state.dart';

enum CartOperation {
  add,
  subract,
}

class CartNotifier extends StateNotifier<CartState> {
  CartNotifier() : super(const CartState(posItems: {}));

  void addToCart(PosItemEntity posItem) {
    final String key = posItem.product!.id!.toString();
    if (!state.posItems.containsKey(key)) {
      state = state.copyWith(posItems: {
        ...state.posItems,
        key: posItem,
      });
    }
  }

  void editQuantity(int productId, CartOperation operation) {
    final String key = productId.toString();

    final existingItem = state.posItems[key]!;
    state = state.copyWith(posItems: {
      ...state.posItems,
      key: existingItem.copyWith(
        orderCount: operation == CartOperation.add
            ? existingItem.orderCount + 1
            : existingItem.orderCount - 1,
      ),
    });
  }
}

final cartNotifierProvider =
    StateNotifierProvider.autoDispose<CartNotifier, CartState>((ref) {
  return CartNotifier();
});
