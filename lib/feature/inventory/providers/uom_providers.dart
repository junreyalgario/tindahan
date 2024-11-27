import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tienda_pos/feature/inventory/data/local/dao/uom_dao.dart';
import 'package:tienda_pos/feature/inventory/data/repositories/uom_repository_impl.dart';
import 'package:tienda_pos/feature/inventory/domain/usecases/uom_usecase.dart';

// Provider for creating an instance of UomRepositoryImpl, which interacts with the UomDao
final uomRepositoryImpProvider = Provider<UomRepositoryImpl>((ref) {
  return UomRepositoryImpl(
    // Injecting UomDao into the repository implementation
    uomDao: ref.read(uomDaoProvider),
  );
});

// Provider for creating an instance of UomUsecase, which uses UomRepository
final uomUsecaseProvider = Provider<UomUsecase>((ref) {
  return UomUsecase(
    // Injecting UomRepositoryImpl into the usecase
    uomRepository: ref.read(uomRepositoryImpProvider),
  );
});
