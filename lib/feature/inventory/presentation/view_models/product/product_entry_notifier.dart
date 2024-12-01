import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tienda_pos/core/state/data_state.dart';
import 'package:tienda_pos/core/utils/logger.dart';
import 'package:tienda_pos/feature/inventory/domain/entities/category/category_entity.dart';
import 'package:tienda_pos/feature/inventory/domain/entities/inventory/inventory_entity.dart';
import 'package:tienda_pos/feature/inventory/domain/entities/inventory_transaction/inventory_transaction_entity.dart';
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
  // Constructor initializes use cases for category, UOM, and product.
  ProductEntryNotifier({
    required CategoryUsecase categoryUsecase,
    required UomUsecase uomUsecase,
    required ProductUsecase productUsecase,
  })  : _categoryUsecase = categoryUsecase,
        _uomUsecase = uomUsecase,
        _productUsecase = productUsecase,
        super(const ProductEntryState()) {
    setCategories(); // Sets categories when the notifier is created.
    setUomList(); // Sets UOM list when the notifier is created.
  }

  final CategoryUsecase _categoryUsecase;
  final UomUsecase _uomUsecase;
  final ProductUsecase _productUsecase;

  // Fetches categories and updates the state with the result.
  Future<void> setCategories() async {
    final result = await _categoryUsecase.getCategories();
    if (result.isSuccess) {
      state = state.copyWith(
          categories: result.data!); // Update state with categories.
    }
  }

  // Fetches the list of UOM (Units of Measure) and updates the state.
  Future<void> setUomList() async {
    final result = await _uomUsecase.getList();
    if (result.isSuccess) {
      state =
          state.copyWith(uomList: result.data!); // Update state with UOM list.
    }
  }

  // Sets the product in the state with the provided ProductEntity.
  void setProduct(ProductEntity productEntity) {
    state = state.copyWith(
        product: productEntity,
        inventory: productEntity.inventory ?? const InventoryEntity(),
        transaction: productEntity.inventory != null
            ? productEntity.inventory!.transactions.last
            : const InventoryTransactionEntity());
  }

  // Generic method for updating product data in the state.
  void _updateProduct(ProductEntity Function(ProductEntity product) updater) {
    state = state.copyWith(product: updater(state.product));
  }

  // Generic method for updating inventory data in the state.
  void _updateInventory(
      InventoryEntity Function(InventoryEntity inventory) updater) {
    state = state.copyWith(inventory: updater(state.inventory));
  }

  // Sets the product category by updating the product entity.
  void setProductCategory(CategoryEntity? categoryEntity) {
    _updateProduct((product) => product.copyWith(category: categoryEntity));
  }

  void _updateTransaction(
      InventoryTransactionEntity Function(
              InventoryTransactionEntity transaction)
          updater) {
    state = state.copyWith(transaction: updater(state.transaction));
  }

  void setProductCategoryByName(String categoryName) {
    CategoryEntity category = state.categories.firstWhere(
      (CategoryEntity category) =>
          category.name!.toLowerCase().trim() ==
          categoryName.toLowerCase().trim(),
      orElse: () => const CategoryEntity(),
    );

    if (category.id != null) {
      _updateProduct((product) => product.copyWith(category: category));
    }
  }

  // Sets the product UOM (unit of measure) by updating the product entity.
  void setProductUom(UomEntity? uomEntity) {
    _updateProduct((product) => product.copyWith(uom: uomEntity));
  }

  void setProductUomByName(String name) {
    UomEntity uom = state.uomList.firstWhere(
      (UomEntity uom) =>
          uom.name!.toLowerCase().trim() == name.toLowerCase().trim(),
      orElse: () => const UomEntity(),
    );

    if (uom.id != null) {
      _updateProduct((product) => product.copyWith(uom: uom));
    }
  }

  // Sets the product name by updating the product entity.
  void setProductName(String? name) {
    _updateProduct((product) => product.copyWith(name: name));
  }

  // Sets the product price by updating the product entity.
  void setProductPrice(double? price) {
    _updateProduct((product) => product.copyWith(price: price));
  }

  // Sets the product's low stock level by updating the product entity.
  void setProductLowStockLevel(double lowStockLevel) {
    _updateInventory(
        (inventory) => inventory.copyWith(reorderLevel: lowStockLevel));
  }

  // Sets the product cost by updating the inventory entity.
  void setProductCost(double cost) {
    _updateTransaction(
        (transaction) => transaction.copyWith(costPerUnit: cost));
  }

  // Sets the product stock quantity by updating the inventory entity.
  void setProductStocks(double quantity) {
    _updateTransaction(
        (transaction) => transaction.copyWith(quantity: quantity));
  }

  // Saves the product and its inventory data to the repository.
  Future<DataState<bool>> save() async {
    DataState<bool> result;

    state = state.copyWith(
        product: state.product.copyWith(
            inventory:
                state.inventory.copyWith(transactions: [state.transaction])));

    if (state.product.id != null) {
      result = await _productUsecase.update(state.product);
    } else {
      result = await _productUsecase.insert(state.product);
    }
    return result;
  }
}

// Provider for ProductEntryNotifier, making it available for dependency injection.
final productEntryProvider =
    StateNotifierProvider.autoDispose<ProductEntryNotifier, ProductEntryState>(
        (ref) {
  return ProductEntryNotifier(
    categoryUsecase:
        ref.read(categoryUseCaseProvider), // Reads CategoryUsecase provider.
    uomUsecase: ref.read(uomUsecaseProvider), // Reads UOMUsecase provider.
    productUsecase:
        ref.read(productUsecaseProvider), // Reads ProductUsecase provider.
  );
});
