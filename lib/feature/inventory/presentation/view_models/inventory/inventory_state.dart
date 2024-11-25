// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tienda_pos/feature/inventory/domain/entities/product/product_entity.dart';

part 'inventory_state.freezed.dart';

@freezed
class InventoryState with _$InventoryState {
  const factory InventoryState({
    @Default([]) List<ProductEntity> productList,
  }) = _InventoryState;
}
