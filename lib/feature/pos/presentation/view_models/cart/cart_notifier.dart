import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tienda_pos/feature/pos/domain/entities/pos_order/pos_order_entity.dart';
import 'package:tienda_pos/feature/pos/presentation/view_models/cart/cart_state.dart';

// Enum to represent the type of operation on the cart (add or subtract)
enum CartOperation {
  add,
  subtract,
}

class CartNotifier extends StateNotifier<CartState> {
  // Constructor initializes the state with an empty cart
  CartNotifier() : super(const CartState(posItems: {}));

  // Helper method to update the cart based on the provided item and quantity
  void _updateCart({
    required PosOrderEntity posItem,
    required double orderCount,
  }) {
    // If the quantity is less than 1, remove the item from the cart
    if (orderCount < 1) {
      removeItem(posItem.product.id!);
    } else {
      final String key = posItem.product.id!.toString();
      final double subAmount =
          (posItem.price > 0 ? posItem.price : posItem.product.price!) *
              orderCount;

      // Update the item with the new order count and subtotal amount
      posItem = posItem.copyWith(
        quantity: orderCount,
        amount: subAmount,
      );

      // Update the state with the new item in the cart
      state = state.copyWith(posItems: {
        ...state.posItems,
        key: posItem,
      });

      // Recalculate the total quantity and grand total
      _calculateTotalQtyAndGrandTotal();
    }
  }

  // Adds an item to the cart with the specified quantity
  void addToCart(PosOrderEntity posItem, double qty) {
    _updateCart(
      posItem: posItem,
      orderCount: qty,
    );
  }

  // Edits the quantity of an item in the cart by either adding or subtracting 1
  void editQuantity(int productId, CartOperation operation) {
    final String key = productId.toString();
    final PosOrderEntity posItem = state.posItems[key]!;

    double orderCount = operation == CartOperation.add
        ? posItem.quantity + 1
        : posItem.quantity - 1;

    // Update the cart with the new quantity
    _updateCart(
      posItem: posItem,
      orderCount: orderCount,
    );
  }

  // Recalculates the total quantity and grand total for the items in the cart
  void _calculateTotalQtyAndGrandTotal() {
    final totals = state.posItems.values.fold<Map<String, double>>(
      {'qty': 0, 'amount': 0},
      (acc, item) {
        acc['qty'] = acc['qty']! + item.quantity;
        acc['amount'] = acc['amount']! + item.amount;
        return acc;
      },
    );

    // Update the state with the new totals
    state = state.copyWith(
      totalqty: totals['qty']!,
      grandTotalAmount: totals['amount']!,
    );
  }

  // Removes an item from the cart by product ID
  void removeItem(int productId) {
    final String key = productId.toString();
    Map<String, PosOrderEntity> items =
        Map<String, PosOrderEntity>.from(state.posItems);
    items.remove(key);

    // Update the state with the item removed
    state = state.copyWith(posItems: items);

    // Recalculate the total quantity and grand total after removing the item
    _calculateTotalQtyAndGrandTotal();
  }

  void reset() {
    state = state.copyWith(posItems: {}, totalqty: 0, grandTotalAmount: 0);
  }
}

// Provider for the CartNotifier, which manages the cart state
final cartNotifierProvider =
    StateNotifierProvider.autoDispose<CartNotifier, CartState>((ref) {
  return CartNotifier();
});
