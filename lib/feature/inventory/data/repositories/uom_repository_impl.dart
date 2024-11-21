import 'package:tienda_pos/core/state/data_state.dart';
import 'package:tienda_pos/feature/inventory/domain/entities/uom/uom_entity.dart';
import 'package:tienda_pos/feature/inventory/domain/repositories/uom_repository.dart';

class UomRepositoryImpl implements UomRepository {
  @override
  Future<DataState<bool>> delete(int id) async {
    return DataState.success(true);
  }

  @override
  Future<DataState<UomEntity>> getById(int id) async {
    return DataState.success(const UomEntity());
  }

  @override
  Future<DataState<List<UomEntity>>> getList() async {
    return DataState.success([]);
  }

  @override
  Future<DataState<bool>> insert(UomEntity entity) async {
    return DataState.success(true);
  }

  @override
  Future<DataState<List<UomEntity>>> search(String query) async {
    return DataState.success([]);
  }

  @override
  Future<DataState<bool>> update(UomEntity entity) async {
    return DataState.success(true);
  }
}
