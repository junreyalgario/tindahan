import 'package:tienda_pos/core/domain/entity_repository.dart';
import 'package:tienda_pos/core/state/data_state.dart';
import 'package:tienda_pos/feature/pos/domain/entities/pos_transaction/pos_transaction_entity.dart';
import 'package:tienda_pos/feature/pos/domain/repositories/pos_transaction_repository.dart';

class PosTransactionRepositoryImpl extends PosTransactionRepository {
  @override
  Future<DataState<bool>> delete(int id) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<DataState<PosTransactionEntity>> getById(int id) {
    // TODO: implement getById
    throw UnimplementedError();
  }

  @override
  Future<DataState<List<PosTransactionEntity>>> getList() {
    // TODO: implement getList
    throw UnimplementedError();
  }

  @override
  Future<DataState<bool>> insert(PosTransactionEntity entity) {
    // TODO: implement insert
    throw UnimplementedError();
  }

  @override
  Future<DataState<bool>> insertAll(List<PosTransactionEntity> entities) {
    // TODO: implement insertAll
    throw UnimplementedError();
  }

  @override
  Future<DataState<List<PosTransactionEntity>>> search(String query) {
    // TODO: implement search
    throw UnimplementedError();
  }

  @override
  Future<DataState<bool>> update(PosTransactionEntity entity) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
