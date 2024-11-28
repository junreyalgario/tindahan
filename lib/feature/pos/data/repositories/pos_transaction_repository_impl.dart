import 'package:realm/realm.dart';
import 'package:tienda_pos/core/state/data_state.dart';
import 'package:tienda_pos/core/utils/logger.dart';
import 'package:tienda_pos/feature/inventory/data/local/dao/product_dao.dart';
import 'package:tienda_pos/feature/inventory/data/models/product/product.dart';
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

  PosTransactionRepositoryImpl({
    required PosOrderDao orderDao,
    required PosTransactionDao transactionDao,
    required ProductDao productDao,
  })  : _orderDao = orderDao,
        _trasactionDao = transactionDao,
        _productDao = productDao;

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
  Future<DataState<bool>> insert(PosTransactionEntity entity) async {
    try {
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
        _productDao.updateStocksOnHand(
            order.product!, order.product!.stockOnHand - order.quantity);
      }

      return DataState.success(true);
    } catch (e, stackTrace) {
      Log.error(e.toString(), stackTrace: stackTrace);
      return DataState.error(e.toString());
    }
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
