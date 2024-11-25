import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tienda_pos/feature/inventory/domain/entities/product/product_entity.dart';
import 'package:tienda_pos/feature/pos/domain/entities/pos_item/pos_item_entity.dart';
import 'package:tienda_pos/feature/pos/presentation/view_models/cart/cart_notifier.dart';
import 'package:tienda_pos/feature/pos/presentation/view_models/cart/cart_state.dart';

class PosItemNotifier extends StateNotifier<PosItemEntity> {
  final CartNotifier _cartNotifier;

  PosItemNotifier(super.state, this._cartNotifier) {
    _initCartListener();
  }

  void _initCartListener() {
    _cartNotifier.addListener((CartState cartState) {
      if (state.product != null) {
        final String key = state.product!.id.toString();
        if (cartState.posItems.containsKey(key)) {
          _udpateState(cartState.posItems[key]!.orderCount);
        }
      }
    });
  }

  void _udpateState(double orderCount) {
    state = state.copyWith(
      orderCount: orderCount,
      subTotalAmount: state.product!.price! * orderCount,
    );
  }

  void addOrder(double quantity) {
    final double orderCount = state.orderCount + quantity;
    _udpateState(orderCount);
    _cartNotifier.addToCart(state);
  }
}

final posItemNotifierProvider = StateNotifierProvider.autoDispose
    .family<PosItemNotifier, PosItemEntity, ProductEntity>(
        (ref, ProductEntity product) {
  return PosItemNotifier(
    PosItemEntity(product: product),
    ref.watch(cartNotifierProvider.notifier),
  );
});
