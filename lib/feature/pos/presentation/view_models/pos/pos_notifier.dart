import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tienda_pos/core/utils/logger.dart';
import 'package:tienda_pos/feature/pos/domain/usecases/pos_usecase.dart';
import 'package:tienda_pos/feature/pos/presentation/view_models/pos/pos_state.dart';
import 'package:tienda_pos/feature/pos/presentation/view_models/pos_category/pos_category_notifier.dart';
import 'package:tienda_pos/feature/pos/presentation/view_models/pos_category/pos_category_state.dart';
import 'package:tienda_pos/feature/pos/providers/pos_providers.dart';

class PosNotifier extends StateNotifier<PosState> {
  final PosUsecase _posUsecase;
  final PosCategoryNotifier _categoryNotifier;

  PosNotifier({
    required PosUsecase posUsecase,
    required PosCategoryNotifier categoryNotifier,
  })  : _posUsecase = posUsecase,
        _categoryNotifier = categoryNotifier,
        super(const PosState()) {
    _initPosItems();
    _initCategoryListener();
  }

  void _initPosItems() async {
    final result = await _posUsecase.getPosItems();

    if (result.isSuccess) {
      state = state.copyWith(items: result.data!);
    }
  }

  void _initCategoryListener() {
    _categoryNotifier.addListener((PosCategoryState catState) {
      //
      Log.info('_categoryNotifier ${catState.activeCategory}');
    });
  }
}

final posNotifierProvider =
    StateNotifierProvider.autoDispose<PosNotifier, PosState>((ref) {
  return PosNotifier(
    posUsecase: ref.read(posUsecaseProvider),
    categoryNotifier: ref.read(posCategoryNotifierProvider.notifier),
  );
});
