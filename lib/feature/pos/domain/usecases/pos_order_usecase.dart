import 'package:tienda_pos/core/state/data_state.dart';
import 'package:tienda_pos/feature/pos/domain/entities/pos_order/pos_order_entity.dart';
import 'package:tienda_pos/feature/pos/domain/repositories/pos_order_repository.dart';

class PosOrderUsecase {
  final PosOrderRepository _posOrderRepository;

  PosOrderUsecase({required PosOrderRepository posOrderRepository})
      : _posOrderRepository = posOrderRepository;

  Future<DataState<bool>> saveAll(List<PosOrderEntity> orders) {
    return _posOrderRepository.insertAll(orders);
  }
}
