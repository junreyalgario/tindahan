import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tienda_pos/feature/inventory/data/local/dao/uom_dao.dart';
import 'package:tienda_pos/feature/inventory/data/repositories/uom_repository_impl.dart';
import 'package:tienda_pos/feature/inventory/domain/usecases/uom_usecase.dart';

final uomRepositoryImpProvider = Provider<UomRepositoryImpl>((ref) {
  return UomRepositoryImpl(uomDao: ref.read(uomDaoProvider));
});

final uomUsecaseProvider = Provider<UomUsecase>((ref) {
  return UomUsecase(uomRepository: ref.read(uomRepositoryImpProvider));
});
