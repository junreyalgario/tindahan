import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tienda_pos/feature/pos/domain/entities/pos_item/pos_item_entity.dart';
import 'package:tienda_pos/feature/pos/presentation/view_models/pos/pos_notifier.dart';

class PosItemNotifier extends StateNotifier<PosItemEntity> {
  final PosNotifier _posNotifier;

  // Constructor to initialize the PosItemNotifier with the current state and PosNotifier
  PosItemNotifier(
    super.state, {
    required PosNotifier posNotifier,
  }) : _posNotifier = posNotifier;

  // Function to set a price change and update the sub-total amount for the item
  void setPriceChange({required double price, required double quantity}) {
    // If the price has changed, update the state with the new price change
    if (price != state.product!.price) {
      state = state.copyWith(priceChange: price);
      _posNotifier
          .onPosItemChange(state); // Notify PosNotifier about the price change
    }
    setAmount(quantity); // Update the amount based on the quantity
  }

  // Function to set the sub-total amount based on quantity and price
  void setAmount(double qty) {
    // If a price change exists, use it; otherwise, use the original price
    double price =
        state.priceChange > 0 ? state.priceChange : state.product!.price!;
    // Update the state with the new sub-total amount
    state = state.copyWith(subTotalAmount: price * qty);
  }
}

// Provider for managing the state of a PosItemNotifier, allowing auto-disposal and family-based creation
final posItemNotifierProvider = StateNotifierProvider.autoDispose
    .family<PosItemNotifier, PosItemEntity, PosItemEntity>(
  (ref, posItem) {
    // Create a new PosItemNotifier with the provided posItem and the PosNotifier from the provider
    return PosItemNotifier(
      posItem,
      posNotifier: ref.read(posNotifierProvider.notifier),
    );
  },
);
