import 'dart:developer';

import 'package:tienda_pos/core/state/data_state.dart';
import 'package:tienda_pos/feature/inventory/data/local/dao/uom_dao.dart';
import 'package:tienda_pos/feature/inventory/data/models/uom/uom.dart';
import 'package:tienda_pos/feature/inventory/domain/entities/uom/uom_entity.dart';
import 'package:tienda_pos/feature/inventory/domain/repositories/uom_repository.dart';

class UomRepositoryImpl implements UomRepository {
  final UomDao _uomDao;

  UomRepositoryImpl({required UomDao uomDao}) : _uomDao = uomDao;

  @override
  Future<DataState<bool>> delete(int id) async {
    try {
      _uomDao.delete(id);
      return DataState.success(true);
    } catch (e) {
      log(e.toString());
      return DataState.error(e.toString());
    }
  }

  @override
  Future<DataState<UomEntity>> getById(int id) async {
    try {
      final Uom? uom = _uomDao.getById(id);

      if (uom == null) {
        return DataState.error('Uom not found.');
      }

      return DataState.success(UomEntity.fromJson(uom.toJson()));
    } catch (e) {
      log(e.toString());
      return DataState.error(e.toString());
    }
  }

  @override
  Future<DataState<List<UomEntity>>> getList() async {
    try {
      List<UomEntity> uomEntities = [];

      for (Uom uomModel in _uomDao.getAll()) {
        uomEntities.add(UomEntity.fromJson(uomModel.toJson()));
      }

      return DataState.success(
          uomEntities..sort((a, b) => a.name!.compareTo(b.name!)));
    } catch (e) {
      log(e.toString());
      return DataState.error(e.toString());
    }
  }

  @override
  Future<DataState<bool>> insert(UomEntity entity) async {
    try {
      entity = entity.copyWith(
        id: _uomDao.getNextId(),
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      );

      _uomDao.save($Uom.fromJson(entity.toJson()));

      return DataState.success(true);
    } catch (e) {
      log(e.toString());
      return DataState.error(e.toString());
    }
  }

  @override
  Future<DataState<List<UomEntity>>> search(String query) async {
    return DataState.success([]);
  }

  @override
  Future<DataState<bool>> update(UomEntity entity) async {
    try {
      final Uom uom = Uom(
        entity.id!,
        entity.name!,
        entity.symbol!,
        entity.uom!,
        entity.createdAt!,
        DateTime.now(),
      );

      _uomDao.update(uom);

      return DataState.success(true);
    } catch (e) {
      log(e.toString());
      return DataState.error(e.toString());
    }
  }

  @override
  Future<DataState<bool>> insertAll(List<UomEntity> entities) async {
    return DataState.success(true);
  }
}
