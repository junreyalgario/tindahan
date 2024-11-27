import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tienda_pos/feature/pos/domain/entities/pos_item/pos_item_entity.dart';
import 'package:tienda_pos/feature/pos/presentation/view_models/cart/cart_state.dart';

enum CartOperation {
  add,
  subract,
}

class CartNotifier extends StateNotifier<CartState> {
  CartNotifier() : super(const CartState(posItems: {}));

  void _updateCart({
    required PosItemEntity posItem,
    required double orderCount,
  }) {
    if (orderCount < 1) {
      removeItem(posItem.product!.id!);
    } else {
      final String key = posItem.product!.id!.toString();
      posItem = posItem.copyWith(
        orderCount: orderCount,
        subTotalAmount: posItem.product!.price! * orderCount,
      );

      state = state.copyWith(posItems: {
        ...state.posItems,
        key: posItem,
      });

      _calculateTotalQtyAndGrandTotal();
    }
  }

  void addToCart(PosItemEntity posItem, double qty) {
    _updateCart(
      posItem: posItem,
      orderCount: qty,
    );
  }

  void editQuantity(int productId, CartOperation operation) {
    final String key = productId.toString();
    final PosItemEntity posItem = state.posItems[key]!;

    double orderCount = operation == CartOperation.add
        ? posItem.orderCount + 1
        : posItem.orderCount - 1;

    _updateCart(
      posItem: posItem,
      orderCount: orderCount,
    );
  }

  void _calculateTotalQtyAndGrandTotal() {
    final totals = state.posItems.values.fold<Map<String, double>>(
      {'qty': 0, 'amount': 0},
      (acc, item) {
        acc['qty'] = acc['qty']! + item.orderCount;
        acc['amount'] = acc['amount']! + item.subTotalAmount;
        return acc;
      },
    );

    state = state.copyWith(
      totalqty: totals['qty']!,
      grandTotalAmount: totals['amount']!,
    );
  }

  void removeItem(int productId) {
    final String key = productId.toString();
    Map<String, PosItemEntity> items =
        Map<String, PosItemEntity>.from(state.posItems);
    items.remove(key);
    state = state.copyWith(posItems: items);
    _calculateTotalQtyAndGrandTotal();
  }
}

final cartNotifierProvider =
    StateNotifierProvider.autoDispose<CartNotifier, CartState>((ref) {
  return CartNotifier();
});
