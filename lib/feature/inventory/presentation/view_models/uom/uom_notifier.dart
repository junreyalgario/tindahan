import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tienda_pos/feature/inventory/domain/entities/uom/uom_entity.dart';
import 'package:tienda_pos/feature/inventory/domain/usecases/uom_usecase.dart';
import 'package:tienda_pos/feature/inventory/providers/uom_providers.dart';

class UomNotifier extends StateNotifier<UomEntity> {
  UomNotifier(this._uomUsecase) : super(const UomEntity());

  final UomUsecase _uomUsecase;

  Future save(UomEntity uomEntity) {
    return _uomUsecase.insert(uomEntity);
  }
}

final uomNotifierProvider =
    StateNotifierProvider.autoDispose<UomNotifier, UomEntity>((ref) {
  return UomNotifier(ref.read(uomUsecaseProvider));
});
