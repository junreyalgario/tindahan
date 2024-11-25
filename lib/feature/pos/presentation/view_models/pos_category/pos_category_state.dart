// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tienda_pos/feature/inventory/domain/entities/category/category_entity.dart';

part 'pos_category_state.freezed.dart';

@freezed
class PosCategoryState with _$PosCategoryState {
  const factory PosCategoryState({
    @Default([]) List<CategoryEntity> categories,
    @Default(null) CategoryEntity? activeCategory,
  }) = _PosCategoryState;
}
