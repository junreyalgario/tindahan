// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tienda_pos/feature/inventory/domain/entities/category/category_entity.dart';
import 'package:tienda_pos/feature/inventory/domain/entities/inventory/inventory_entity.dart';
import 'package:tienda_pos/feature/inventory/domain/entities/inventory_transaction/inventory_transaction_entity.dart';
import 'package:tienda_pos/feature/inventory/domain/entities/product/product_entity.dart';
import 'package:tienda_pos/feature/inventory/domain/entities/uom/uom_entity.dart';

part 'product_entry_state.freezed.dart';

@freezed
class ProductEntryState with _$ProductEntryState {
  const factory ProductEntryState({
    @Default(ProductEntity()) ProductEntity product,
    @Default(InventoryEntity()) InventoryEntity inventory,
    @Default(InventoryTransactionEntity())
    InventoryTransactionEntity transaction,
    @Default([]) List<CategoryEntity> categories,
    @Default([]) List<UomEntity> uomList,
  }) = _ProductEntryState;
}
