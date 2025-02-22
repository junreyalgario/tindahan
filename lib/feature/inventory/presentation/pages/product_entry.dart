// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tienda_pos/core/constant/app_colors.dart';
import 'package:tienda_pos/core/constant/ui.dart';
import 'package:tienda_pos/core/state/data_state.dart';
import 'package:tienda_pos/core/styles/button_custom_styles.dart';
import 'package:tienda_pos/core/styles/text_field_styles.dart';
import 'package:tienda_pos/core/utils/logger.dart';
import 'package:tienda_pos/core/widgets/snackbar.dart';
import 'package:tienda_pos/core/widgets/tienda_app.dart';
import 'package:tienda_pos/feature/inventory/domain/entities/category/category_entity.dart';
import 'package:tienda_pos/feature/inventory/domain/entities/inventory/inventory_entity.dart';
import 'package:tienda_pos/feature/inventory/domain/entities/product/product_entity.dart';
import 'package:tienda_pos/feature/inventory/domain/entities/uom/uom_entity.dart';
import 'package:tienda_pos/feature/inventory/presentation/view_models/product/product_entry_notifier.dart';
import 'package:tienda_pos/feature/inventory/presentation/widgets/category_form.dart';
import 'package:tienda_pos/feature/inventory/presentation/widgets/uom_form.dart';

class ProductEntry extends ConsumerStatefulWidget {
  const ProductEntry({super.key, this.productEntity});

  final ProductEntity? productEntity;

  @override
  ConsumerState<ProductEntry> createState() => _ProductEntryState();
}

class _ProductEntryState extends ConsumerState<ProductEntry> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _costController = TextEditingController();
  final TextEditingController _stocksController = TextEditingController();
  final TextEditingController _lowStockController = TextEditingController();

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      if (widget.productEntity != null) {
        ref
            .watch(productEntryProvider.notifier)
            .setProduct(widget.productEntity!);
        _nameController.text = widget.productEntity!.name!;
        _priceController.text = widget.productEntity!.price!.toString();
        _costController.text =
            widget.productEntity!.inventory!.currentCost.toString();
        _stocksController.text =
            widget.productEntity!.inventory!.stockLevel.toString();
        _lowStockController.text =
            widget.productEntity!.inventory!.reorderLevel.toString();
      } else {
        ref
            .watch(productEntryProvider.notifier)
            .setProduct(const ProductEntity(inventory: InventoryEntity()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return TiendaApp(
      title: 'Product Details',
      child: SingleChildScrollView(
        padding: UI.page_padding,
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              ..._buildPhotoSection(),
              const SizedBox(height: 10),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    ..._buildDetailSection(),
                  ],
                ),
              ),

              // Save button
              Container(
                margin: const EdgeInsets.only(top: 20, bottom: 40),
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ButtonCustomStyles.elevatedStyle(
                    backgroundColor: AppColors.confirm,
                  ),
                  onPressed: () async {
                    if (_formKey.currentState?.validate() ?? false) {
                      final DataState result =
                          await ref.watch(productEntryProvider.notifier).save();
                      if (result.isSuccess) {
                        showTopSnackbar(
                            context: context,
                            color: AppColors.success,
                            message: 'Product saved successfully!');
                        // Navigator.of(context).pop(true);
                      } else {
                        showTopSnackbar(
                            context: context,
                            color: AppColors.danger,
                            message: 'Failed to save product.');
                      }
                    }
                  },
                  child: const Text(
                    'SAVE',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _buildPhotoSection() {
    return [
      Stack(
        clipBehavior: Clip.none,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(
              'https://fastly.picsum.photos/id/217/200/200.jpg?hmac=LoNAUhfCfURrqYjw6WECEWybn4B8y37k5G2odewlZ_Y',
              width: 220,
              height: 220,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            right: 5,
            top: 5,
            child: Container(
              width: 40,
              height: 40,
              decoration: const BoxDecoration(
                color: Color.fromARGB(66, 0, 0, 0),
                shape: BoxShape.circle,
              ),
              child: IconButton(
                iconSize: 20,
                color: Colors.white,
                icon: const Icon(Icons.close),
                onPressed: () {
                  //
                },
              ),
            ),
          ),
        ],
      ),
      const SizedBox(height: 5),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            iconSize: 40,
            color: AppColors.icon_button,
            icon: const Icon(Icons.photo),
            onPressed: () async {
              //
            },
          ),
          IconButton(
            iconSize: 40,
            color: AppColors.icon_button,
            icon: const Icon(Icons.camera_alt),
            onPressed: () {
              //
            },
          ),
        ],
      )
    ];
  }

  _buildDetailSection() {
    final productState = ref.watch(productEntryProvider);
    final productNotifier = ref.watch(productEntryProvider.notifier);

    return [
      // Product category
      SizedBox(
        height: UI.need_validation_field_height,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SizedBox(
                height: UI.need_validation_field_height,
                child: DropdownButtonFormField<CategoryEntity>(
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.info_outline),
                      onPressed: () {
                        if (productState.product.category != null) {
                          _showCategoryDialog(productState.product.category);
                        }
                      },
                    ),
                  ),
                  hint: const Text('Product category'),
                  value: productState.product.category,
                  items: productState.categories.map((CategoryEntity item) {
                    return DropdownMenuItem<CategoryEntity>(
                      value: item,
                      child: Text(item.name!),
                    );
                  }).toList(),
                  validator: (value) {
                    if (value == null) {
                      return '';
                    }
                    return null;
                  },
                  onChanged: (CategoryEntity? value) {
                    productNotifier.setProductCategory(value!);
                  },
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 5),
              child: IconButton(
                icon: const Icon(Icons.add),
                onPressed: () {
                  _showCategoryDialog(null);
                },
              ),
            ),
          ],
        ),
      ),

      // Product name
      SizedBox(
        height: 75,
        child: TextFormField(
          controller: _nameController,
          decoration: TextFieldStyles.decoration(
            TextFormFieldDecoration(labelText: 'Product name'),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return '';
            }
            return null;
          },
          onChanged: (value) {
            productNotifier.setProductName(value);
          },
        ),
      ),

      // UOM
      SizedBox(
        height: UI.need_validation_field_height,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SizedBox(
                height: UI.need_validation_field_height,
                child: DropdownButtonFormField<UomEntity>(
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.info_outline),
                      onPressed: () {
                        if (productState.product.uom != null) {
                          _showUomDIalog(productState.product.uom);
                        }
                      },
                    ),
                  ),
                  hint: const Text('Unit of measure'),
                  value: productState.product.uom,
                  isExpanded: true,
                  items: productState.uomList.map((UomEntity item) {
                    return DropdownMenuItem<UomEntity>(
                      value: item,
                      child: Text('${item.name!} \t (${item.symbol!})'),
                    );
                  }).toList(),
                  validator: (value) {
                    if (value == null) {
                      return '';
                    }
                    return null;
                  },
                  onChanged: (UomEntity? value) {
                    productNotifier.setProductUom(value!);
                  },
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 5),
              child: IconButton(
                icon: const Icon(Icons.add),
                onPressed: () {
                  _showUomDIalog(null);
                },
              ),
            ),
          ],
        ),
      ),

      // Price and cost
      SizedBox(
        height: UI.need_validation_field_height,
        child: Row(
          children: [
            Expanded(
              child: SizedBox(
                height: UI.need_validation_field_height,
                child: TextFormField(
                  controller: _priceController,
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                  decoration: TextFieldStyles.decoration(
                      TextFormFieldDecoration(labelText: 'Price')),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return '';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    productNotifier.setProductPrice(double.parse(value));
                  },
                ),
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: SizedBox(
                height: UI.need_validation_field_height,
                child: TextFormField(
                  controller: _costController,
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                  decoration: TextFieldStyles.decoration(
                    TextFormFieldDecoration(labelText: 'Cost'),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return '';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    productNotifier.setProductCost(double.parse(value));
                  },
                ),
              ),
            ),
          ],
        ),
      ),

      // Stocks and low stocks
      SizedBox(
        height: 75,
        child: Row(
          children: [
            Expanded(
              child: SizedBox(
                height: UI.need_validation_field_height,
                child: TextFormField(
                  controller: _stocksController,
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                  decoration: TextFieldStyles.decoration(
                      TextFormFieldDecoration(labelText: 'Stocks')),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return '';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    productNotifier.setProductStocks(double.parse(value));
                  },
                ),
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: SizedBox(
                height: UI.need_validation_field_height,
                child: TextFormField(
                  controller: _lowStockController,
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                  decoration: TextFieldStyles.decoration(
                    TextFormFieldDecoration(labelText: 'Low stock level'),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return '';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    productNotifier
                        .setProductLowStockLevel(double.parse(value));
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    ];
  }

  _showCategoryDialog(CategoryEntity? categoryEntity) {
    final productNotifier = ref.watch(productEntryProvider.notifier);

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          elevation: 10.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: CategoryForm(
            categoryEntity: categoryEntity,
            onSuccess: (CategoryEntity? categoryEntity) async {
              await productNotifier.setCategories();
              if (categoryEntity != null) {
                productNotifier.setProductCategoryByName(categoryEntity.name!);
              }
            },
            onDelete: () {
              productNotifier.setCategories();
              productNotifier.setProductCategory(null);
            },
          ),
        );
      },
    );
  }

  _showUomDIalog(UomEntity? uomEntity) {
    final productNotifier = ref.watch(productEntryProvider.notifier);

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          elevation: 10.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: OumForm(
            uomEntity: uomEntity,
            onSuccess: (UomEntity? uomEntity) async {
              await productNotifier.setUomList();
              if (uomEntity != null) {
                productNotifier.setProductUomByName(uomEntity.name!);
              }
            },
            onDelete: () {
              productNotifier.setUomList();
              productNotifier.setProductUom(null);
            },
          ),
        );
      },
    );
  }
}
