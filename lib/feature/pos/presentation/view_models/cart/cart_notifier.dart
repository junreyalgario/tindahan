import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tienda_pos/core/utils/logger.dart';
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
    required String key,
    required double orderCount,
    required double stockOnHand,
  }) {
    Log.info('_updateCart');
    posItem = posItem.copyWith(
      product: posItem.product!.copyWith(stockOnHand: stockOnHand),
      orderCount: orderCount,
      subTotalAmount: posItem.product!.price! * orderCount,
    );

    state = state.copyWith(posItems: {
      ...state.posItems,
      key: posItem,
    });

    _calculateTotalQtyAndGrandTotal();
  }

  void addToCart(PosItemEntity posItem, double qty) {
    final String key = posItem.product!.id!.toString();

    _updateCart(
      posItem: posItem,
      key: key,
      orderCount: posItem.orderCount + qty,
      stockOnHand: posItem.product!.stockOnHand! - qty,
    );
  }

  void editQuantity(int productId, CartOperation operation) {
    final String key = productId.toString();
    final PosItemEntity posItem = state.posItems[key]!;
    double orderCount = operation == CartOperation.add
        ? posItem.orderCount + 1
        : posItem.orderCount - 1;
    double stockOnHand = operation == CartOperation.add
        ? posItem.product!.stockOnHand! - 1
        : posItem.product!.stockOnHand! + 1;

    _updateCart(
      posItem: posItem,
      key: key,
      orderCount: orderCount,
      stockOnHand: stockOnHand,
    );
  }

  void _calculateTotalQtyAndGrandTotal() {
    // final totals = state.posItems.values.fold<Map<String, double>>(
    //   {'qty': 0, 'amount': 0},
    //   (acc, item) {
    //     acc['qty'] = acc['qty']! + item.orderCount;
    //     acc['amount'] = acc['amount']! + item.subTotalAmount;
    //     return acc;
    //   },
    // );

    double totalQty = 0;
    double totalAmount = 0;
    state.posItems.forEach((key, PosItemEntity item) {
      totalQty += item.orderCount;
      totalAmount += item.subTotalAmount;
    });

    state = state.copyWith(
      totalqty: totalQty,
      grandTotalAmount: totalAmount,
    );

    Log.info('totalQty-> $totalQty totalAmount->$totalAmount');
  }

  @override
  void dispose() {
    // Clean up logic or logging
    print("CartNotifier is disposed.");
    super.dispose();
  }
}

final cartNotifierProvider =
    StateNotifierProvider.autoDispose<CartNotifier, CartState>((ref) {
  return CartNotifier();
});
