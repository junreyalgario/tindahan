import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tienda_pos/feature/pos/domain/entities/pos_item/pos_item_entity.dart';

class PosItemNotifier extends StateNotifier<PosItemEntity> {
  PosItemNotifier(super.state);

  void setAmount(double qty) {
    state = state.copyWith(subTotalAmount: state.product!.price! * qty);
  }
}

final posItemNotifierProvider = StateNotifierProvider.autoDispose
    .family<PosItemNotifier, PosItemEntity, PosItemEntity>(
  (ref, posItem) {
    return PosItemNotifier(posItem);
  },
);
