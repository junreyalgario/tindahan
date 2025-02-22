import 'package:realm/realm.dart';
import 'package:tienda_pos/core/exceptions/not_found.dart';
import 'package:tienda_pos/core/state/data_state.dart';
import 'package:tienda_pos/core/utils/logger.dart';
import 'package:tienda_pos/feature/inventory/data/local/dao/inventory_dao.dart';
import 'package:tienda_pos/feature/inventory/data/models/inventory/inventory.dart';
import 'package:tienda_pos/feature/inventory/domain/entities/inventory/inventory_entity.dart';
import 'package:tienda_pos/feature/inventory/domain/repositories/inventory_repository.dart';

class InventoryRepositoryImpl extends InventoryRepository {
  final Realm _realm;
  final InventoryDao _inventoryDao;

  InventoryRepositoryImpl({
    required Realm realm,
    required InventoryDao inventoryDao,
  })  : _realm = realm,
        _inventoryDao = inventoryDao;

  @override
  Future<DataState<InventoryEntity?>> getById(int id) async {
    Inventory? inventory = _inventoryDao.getById(id);

    if (inventory != null) {
      return DataState.success(
          InventoryEntity.fromJson(inventory.toJson(serializeProduct: false)));
    } else {
      return DataState.success(null);
    }
  }
}
