import 'package:tienda_pos/core/domain/entity_usecase.dart';
import 'package:tienda_pos/core/state/data_state.dart';
import 'package:tienda_pos/feature/inventory/domain/entities/uom/uom_entity.dart';
import 'package:tienda_pos/feature/inventory/domain/repositories/uom_repository.dart';

class UomUsecase implements EntityUsecase<UomEntity> {
  final UomRepository _uomRepository;

  UomUsecase({required UomRepository uomRepository})
      : _uomRepository = uomRepository;

  @override
  Future<DataState<bool>> delete(int id) {
    return _uomRepository.delete(id);
  }

  @override
  Future<DataState<UomEntity>> getById(int id) {
    return _uomRepository.getById(id);
  }

  @override
  Future<DataState<List<UomEntity>>> getList() {
    return _uomRepository.getList();
  }

  @override
  Future<DataState<bool>> insert(UomEntity entity) {
    return _uomRepository.insert(entity);
  }

  @override
  Future<DataState<List<UomEntity>>> search(String query) {
    return _uomRepository.search(query);
  }

  @override
  Future<DataState<bool>> update(UomEntity entity) {
    return _uomRepository.update(entity);
  }
}
