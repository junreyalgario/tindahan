import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tienda_pos/core/state/data_state.dart';
import 'package:tienda_pos/feature/inventory/domain/entities/category/category_entity.dart';
import 'package:tienda_pos/feature/inventory/domain/entities/inventory/inventory_entity.dart';
import 'package:tienda_pos/feature/inventory/domain/entities/product/product_entity.dart';
import 'package:tienda_pos/feature/inventory/domain/entities/uom/uom_entity.dart';
import 'package:tienda_pos/feature/inventory/domain/usecases/category_usecase.dart';
import 'package:tienda_pos/feature/inventory/domain/usecases/product_usecase.dart';
import 'package:tienda_pos/feature/inventory/domain/usecases/uom_usecase.dart';
import 'package:tienda_pos/feature/inventory/presentation/view_models/product/product_entry_state.dart';
import 'package:tienda_pos/feature/inventory/providers/category_providers.dart';
import 'package:tienda_pos/feature/inventory/providers/product_providers.dart';
import 'package:tienda_pos/feature/inventory/providers/uom_providers.dart';

class ProductEntryNotifier extends StateNotifier<ProductEntryState> {
  ProductEntryNotifier({
    required CategoryUsecase categoryUsecase,
    required UomUsecase uomUsecase,
    required ProductUsecase productUsecase,
  })  : _categoryUsecase = categoryUsecase,
        _uomUsecase = uomUsecase,
        _productUsecase = productUsecase,
        super(const ProductEntryState()) {
    setCategories();
    setUomList();
  }

  final CategoryUsecase _categoryUsecase;
  final UomUsecase _uomUsecase;
  final ProductUsecase _productUsecase;

  Future<void> setCategories() async {
    final result = await _categoryUsecase.getCategories();
    if (result.isSuccess) {
      state = state.copyWith(categories: result.data!);
    }
  }

  Future<void> setUomList() async {
    final result = await _uomUsecase.getList();
    if (result.isSuccess) {
      state = state.copyWith(uomList: result.data!);
    }
  }

  void setProduct(ProductEntity productEntity) {
    state = state.copyWith(product: productEntity);
  }

  // Generic product updater method
  void _updateProduct(ProductEntity Function(ProductEntity product) updater) {
    state = state.copyWith(product: updater(state.product));
  }

  // Generic inventory updater method
  void _updateInventory(
      InventoryEntity Function(InventoryEntity inventory) updater) {
    state = state.copyWith(inventory: updater(state.inventory));
  }

  void setProductCategory(CategoryEntity? categoryEntity) {
    _updateProduct((product) => product.copyWith(category: categoryEntity));
  }

  void setProductUom(UomEntity? uomEntity) {
    _updateProduct((product) => product.copyWith(uom: uomEntity));
  }

  void setProductName(String? name) {
    _updateProduct((product) => product.copyWith(name: name));
  }

  void setProductPrice(double? price) {
    _updateProduct((product) => product.copyWith(price: price));
  }

  void setProductLowStockLevel(double? lowStockLevel) {
    _updateProduct((product) => product.copyWith(lowStockLevel: lowStockLevel));
  }

  void setProductCost(double? cost) {
    _updateInventory((inventory) => inventory.copyWith(cost: cost));
  }

  void setProductStocks(double? stocks) {
    _updateInventory((inventory) => inventory.copyWith(stocks: stocks));
  }

  Future<DataState<bool>> save() async {
    state = state.copyWith(
        product: state.product.copyWith(inventoryList: [state.inventory]));
    return _productUsecase.insert(state.product);
  }
}

final productEntryProvider =
    StateNotifierProvider.autoDispose<ProductEntryNotifier, ProductEntryState>(
        (ref) {
  return ProductEntryNotifier(
    categoryUsecase: ref.read(categoryUseCaseProvider),
    uomUsecase: ref.read(uomUsecaseProvider),
    productUsecase: ref.read(productUsecaseProvider),
  );
});
