import 'package:tienda_pos/core/domain/entity_repository.dart';
import 'package:tienda_pos/feature/pos/domain/entities/pos_transaction/pos_transaction_entity.dart';

abstract class PosTransactionRepository
    extends EntityRepository<PosTransactionEntity> {}
