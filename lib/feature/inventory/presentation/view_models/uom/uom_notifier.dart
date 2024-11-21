import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tienda_pos/core/constant/enums.dart';
import 'package:tienda_pos/core/state/data_state.dart';
import 'package:tienda_pos/feature/inventory/domain/entities/uom/uom_entity.dart';
import 'package:tienda_pos/feature/inventory/domain/usecases/uom_usecase.dart';
import 'package:tienda_pos/feature/inventory/providers/uom_providers.dart';

class UomNotifier extends StateNotifier<UomEntity> {
  UomNotifier(this._uomUsecase) : super(const UomEntity());

  final UomUsecase _uomUsecase;

  void setName(String name) {
    state = state.copyWith(name: name);
  }

  void setSymbol(String symbol) {
    state = state.copyWith(symbol: symbol);
  }

  void setUom(String uom) {
    state = state.copyWith(uom: uom);
  }

  void setState(UomEntity uomEntity) {
    state = uomEntity;
  }

  ProductUnit? resolveProductUnit(String unit) {
    if (unit == ProductUnit.length.value) {
      return ProductUnit.length;
    } else if (unit == ProductUnit.piece.value) {
      return ProductUnit.piece;
    } else if (unit == ProductUnit.scale.value) {
      return ProductUnit.scale;
    } else {
      return null;
    }
  }

  Future<DataState<bool>> save() async {
    if (state.id != null) {
      return await _uomUsecase.update(state);
    } else {
      return await _uomUsecase.insert(state);
    }
  }

  Future<DataState<bool>> delete() async {
    if (state.id != null) {
      return await _uomUsecase.delete(state.id!);
    }

    return DataState.error('Failed to delete uom.');
  }
}

final uomNotifierProvider =
    StateNotifierProvider.autoDispose<UomNotifier, UomEntity>((ref) {
  return UomNotifier(ref.read(uomUsecaseProvider));
});
