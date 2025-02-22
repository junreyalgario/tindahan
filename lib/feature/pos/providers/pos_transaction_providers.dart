import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tienda_pos/feature/inventory/data/local/dao/inventory_dao.dart';
import 'package:tienda_pos/feature/inventory/data/local/dao/inventory_transaction_dao.dart';
import 'package:tienda_pos/feature/inventory/data/local/dao/product_dao.dart';
import 'package:tienda_pos/feature/pos/data/local/dao/pos_order_dao.dart';
import 'package:tienda_pos/feature/pos/data/local/dao/pos_transaction_dao.dart';
import 'package:tienda_pos/feature/pos/data/repositories/pos_transaction_repository_impl.dart';
import 'package:tienda_pos/feature/pos/domain/usecases/pos_transaction_usecase.dart';

final posTransactionRepositoryImplProvider =
    Provider<PosTransactionRepositoryImpl>((ref) {
  return PosTransactionRepositoryImpl(
    orderDao: ref.read(posOrderDaoProvider),
    transactionDao: ref.read(posTransactionDaoProvider),
    productDao: ref.read(productDaoProvider),
    invetoryTransactioDao: ref.read(inventoryTransactionDaoProvider),
    inventoryDao: ref.read(inventoryDaoProvider),
  );
});

final posTransactionUsecaseProvider = Provider<PosTransactionUsecase>((ref) {
  return PosTransactionUsecase(
    posTransactionRepository: ref.read(posTransactionRepositoryImplProvider),
  );
});
