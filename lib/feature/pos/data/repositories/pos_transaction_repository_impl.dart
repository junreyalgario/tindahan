import 'package:realm/realm.dart';
import 'package:tienda_pos/core/state/data_state.dart';
import 'package:tienda_pos/core/utils/logger.dart';
import 'package:tienda_pos/feature/inventory/data/local/dao/inventory_dao.dart';
import 'package:tienda_pos/feature/inventory/data/local/dao/inventory_transaction_dao.dart';
import 'package:tienda_pos/feature/inventory/data/local/dao/product_dao.dart';
import 'package:tienda_pos/feature/inventory/data/models/inventory/inventory.dart';
import 'package:tienda_pos/feature/inventory/data/models/inventory_transaction/inventory_transaction.dart';
import 'package:tienda_pos/feature/inventory/domain/entities/inventory_transaction/inventory_transaction_entity.dart';
import 'package:tienda_pos/feature/pos/data/local/dao/pos_order_dao.dart';
import 'package:tienda_pos/feature/pos/data/local/dao/pos_transaction_dao.dart';
import 'package:tienda_pos/feature/pos/data/models/pos_order/pos_order.dart';
import 'package:tienda_pos/feature/pos/data/models/pos_transaction/pos_transaction.dart';
import 'package:tienda_pos/feature/pos/domain/entities/pos_order/pos_order_entity.dart';
import 'package:tienda_pos/feature/pos/domain/entities/pos_transaction/pos_transaction_entity.dart';
import 'package:tienda_pos/feature/pos/domain/entities/pos_transaction/pos_transaction_status.dart';
import 'package:tienda_pos/feature/pos/domain/repositories/pos_transaction_repository.dart';

class PosTransactionRepositoryImpl extends PosTransactionRepository {
  final PosOrderDao _orderDao;
  final PosTransactionDao _trasactionDao;
  final ProductDao _productDao;
  final InventoryTransactionDao _inventoryTransactionDao;
  final InventoryDao _inventoryDao;

  PosTransactionRepositoryImpl({
    required PosOrderDao orderDao,
    required PosTransactionDao transactionDao,
    required ProductDao productDao,
    required InventoryTransactionDao invetoryTransactioDao,
    required InventoryDao inventoryDao,
  })  : _orderDao = orderDao,
        _trasactionDao = transactionDao,
        _productDao = productDao,
        _inventoryTransactionDao = invetoryTransactioDao,
        _inventoryDao = inventoryDao;

  @override
  Future<DataState<bool>> insert(PosTransactionEntity entity) async {
    try {
      // Log.info('entity ->> $entity');
      // Transform PosTransactionEntity to PosTransaction model
      PosTransaction posTransaction = PosTransaction(
        _trasactionDao.getNextId(),
        entity.totalQuantity,
        entity.totalAmount,
        entity.vat,
        entity.payable,
        entity.amountReceived,
        entity.change,
        entity.status == PosTransactionStatus.pending ? 0 : 1,
        DateTime.now(),
        DateTime.now(),
        orders: RealmList<PosOrder>([]),
      );

      // Transform PosOrderEntity to PosOrder model
      int posOrderNextId = _orderDao.getNextId();
      for (PosOrderEntity orderEntity in entity.orders) {
        PosOrder order = PosOrder(
          posOrderNextId,
          orderEntity.price,
          orderEntity.quantity,
          orderEntity.amount,
          DateTime.now(),
          DateTime.now(),
          transaction: posTransaction,
          product: _productDao.getById(orderEntity.product.id!),
        );
        posTransaction.orders.add(order);
        posOrderNextId++;
      }

      // Insert transaction
      _trasactionDao.save(posTransaction);

      // Update Product stocks on hand
      for (PosOrder order in posTransaction.orders) {
        Inventory? inventory =
            _inventoryDao.getById(order.product!.inventory!.id);

        Log.info('orderorder ->> ${inventory}');
        InventoryTransaction inventoryTransaction = InventoryTransaction(
          _inventoryTransactionDao.getNextId(),
          InventoryTransactionType.sale.value,
          order.quantity,
          order.product!.inventory!.currentCost,
          DateTime.now(),
          DateTime.now(),
          DateTime.now(),
          inventory: inventory,
        );

        _inventoryTransactionDao.save(inventoryTransaction);
        inventory!.stockLevel = inventory.stockLevel - order.quantity;
        _inventoryDao.update(inventory);
      }

      return DataState.success(true);
    } catch (e, stackTrace) {
      Log.error(e.toString(), stackTrace: stackTrace);
      return DataState.error(e.toString());
    }
  }
}
