import 'package:tienda_pos/core/state/data_state.dart';
import 'package:tienda_pos/feature/pos/domain/entities/pos_order/pos_order_entity.dart';
import 'package:tienda_pos/feature/pos/domain/repositories/pos_order_repository.dart';

class PosOrderRepositoryImpl extends PosOrderRepository {
  @override
  Future<DataState<bool>> delete(int id) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<DataState<PosOrderEntity>> getById(int id) {
    // TODO: implement getById
    throw UnimplementedError();
  }

  @override
  Future<DataState<List<PosOrderEntity>>> getList() {
    // TODO: implement getList
    throw UnimplementedError();
  }

  @override
  Future<DataState<bool>> insert(PosOrderEntity entity) {
    // TODO: implement insert
    throw UnimplementedError();
  }

  @override
  Future<DataState<bool>> insertAll(List<PosOrderEntity> entities) {
    // TODO: implement insertAll
    throw UnimplementedError();
  }

  @override
  Future<DataState<List<PosOrderEntity>>> search(String query) {
    // TODO: implement search
    throw UnimplementedError();
  }

  @override
  Future<DataState<bool>> update(PosOrderEntity entity) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
