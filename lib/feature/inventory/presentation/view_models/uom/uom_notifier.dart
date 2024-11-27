import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tienda_pos/core/constant/enums.dart';
import 'package:tienda_pos/core/state/data_state.dart';
import 'package:tienda_pos/feature/inventory/domain/entities/uom/uom_entity.dart';
import 'package:tienda_pos/feature/inventory/domain/usecases/uom_usecase.dart';
import 'package:tienda_pos/feature/inventory/providers/uom_providers.dart';

class UomNotifier extends StateNotifier<UomEntity> {
  // Constructor initializes the use case for UOM management.
  UomNotifier(this._uomUsecase) : super(const UomEntity());

  final UomUsecase _uomUsecase;

  // Sets the name for the UOM entity and updates the state.
  void setName(String name) {
    state = state.copyWith(name: name);
  }

  // Sets the symbol for the UOM entity and updates the state.
  void setSymbol(String symbol) {
    state = state.copyWith(symbol: symbol);
  }

  // Sets the UOM type (e.g., length, piece, scale) and updates the state.
  void setUom(String uom) {
    state = state.copyWith(uom: uom);
  }

  // Directly sets the UOM entity and updates the state.
  void setState(UomEntity uomEntity) {
    state = uomEntity;
  }

  // Resolves the unit of measure (UOM) based on a string value and returns the corresponding ProductUnit.
  ProductUnit? resolveProductUnit(String unit) {
    if (unit == ProductUnit.length.value) {
      return ProductUnit.length; // Returns length if matched.
    } else if (unit == ProductUnit.piece.value) {
      return ProductUnit.piece; // Returns piece if matched.
    } else if (unit == ProductUnit.scale.value) {
      return ProductUnit.scale; // Returns scale if matched.
    } else {
      return null; // Returns null if no match found.
    }
  }

  // Saves the UOM entity. If it has an ID, update it; otherwise, insert it as a new UOM.
  Future<DataState<bool>> save() async {
    if (state.id != null) {
      return await _uomUsecase
          .update(state); // Update UOM if it already exists.
    } else {
      return await _uomUsecase.insert(state); // Insert new UOM if no ID.
    }
  }

  // Deletes the UOM entity if it has a valid ID. If no ID, returns an error state.
  Future<DataState<bool>> delete() async {
    if (state.id != null) {
      return await _uomUsecase.delete(state.id!); // Deletes UOM using its ID.
    }

    return DataState.error('Failed to delete uom.'); // Error if no ID present.
  }
}

// Provider to manage UOM notifier using Riverpod. It reads the UOM use case from the provider.
final uomNotifierProvider =
    StateNotifierProvider.autoDispose<UomNotifier, UomEntity>((ref) {
  return UomNotifier(
      ref.read(uomUsecaseProvider)); // Creates UomNotifier with UOM use case.
});
