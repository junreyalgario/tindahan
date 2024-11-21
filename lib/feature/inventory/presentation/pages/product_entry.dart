import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tienda_pos/core/constant/app_colors.dart';
import 'package:tienda_pos/core/constant/ui.dart';
import 'package:tienda_pos/core/styles/button_custom_styles.dart';
import 'package:tienda_pos/core/styles/text_field_styles.dart';
import 'package:tienda_pos/core/widgets/tienda_app.dart';
import 'package:tienda_pos/feature/inventory/domain/entities/category/category_entity.dart';
import 'package:tienda_pos/feature/inventory/domain/entities/uom/uom_entity.dart';
import 'package:tienda_pos/feature/inventory/presentation/view_models/product/product_entry_notifier.dart';
import 'package:tienda_pos/feature/inventory/presentation/widgets/category_form.dart';
import 'package:tienda_pos/feature/inventory/presentation/widgets/uom_form.dart';

class ProductEntry extends ConsumerStatefulWidget {
  const ProductEntry({super.key});

  @override
  ConsumerState<ProductEntry> createState() => _ProductEntryState();
}

class _ProductEntryState extends ConsumerState<ProductEntry> {
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
              ..._buildDetailSection(),
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
    final productEntryState = ref.watch(productEntryProvider);
    final productEntryNotifier = ref.watch(productEntryProvider.notifier);

    return [
      // Product category
      Row(
        children: [
          Expanded(
            child: DropdownButtonFormField<CategoryEntity>(
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.info_outline),
                  onPressed: () {
                    if (productEntryState.product.category != null) {
                      _showCategoryDialog(productEntryState.product.category);
                    }
                  },
                ),
              ),
              hint: const Text('Product category'),
              value: productEntryState.product.category,
              items: productEntryState.categories.map((CategoryEntity item) {
                return DropdownMenuItem<CategoryEntity>(
                  value: item,
                  child: Text(item.name!),
                );
              }).toList(),
              onChanged: (CategoryEntity? value) {
                productEntryNotifier.setProductCategory(value!);
              },
            ),
          ),
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              _showCategoryDialog(null);
            },
          ),
        ],
      ),
      const SizedBox(height: 20),
      // Product name
      TextFormField(
        decoration: TextFieldStyles.decoration(
            TextFormFieldDecoration(labelText: 'Product name')),
      ),
      const SizedBox(height: 20),
      // UOM
      Row(
        children: [
          Expanded(
            child: DropdownButtonFormField<UomEntity>(
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.info_outline),
                  onPressed: () {
                    if (productEntryState.product.uom != null) {
                      _showUomDIalog(productEntryState.product.uom);
                    }
                  },
                ),
              ),
              hint: const Text('Unit of measure'),
              value: productEntryState.product.uom,
              items: productEntryState.uomList.map((UomEntity item) {
                return DropdownMenuItem<UomEntity>(
                  value: item,
                  child: Text('${item.name!} \t (${item.symbol!})'),
                  // child: SizedBox(
                  //   width: 100,
                  //   child: Row(
                  //     children: [
                  //       Text(item.name!),
                  //       const Spacer(),
                  //       Text('(${item.symbol!})'),
                  //     ],
                  //   ),
                  // ),
                );
              }).toList(),
              onChanged: (UomEntity? value) {
                productEntryNotifier.setProductUom(value!);
              },
            ),
          ),
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              _showUomDIalog(null);
            },
          ),
        ],
      ),
      const SizedBox(height: 20),
      // Price and cost
      Row(
        children: [
          Expanded(
            child: TextFormField(
              keyboardType:
                  const TextInputType.numberWithOptions(decimal: true),
              decoration: TextFieldStyles.decoration(
                  TextFormFieldDecoration(labelText: 'Price')),
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: TextFormField(
              keyboardType:
                  const TextInputType.numberWithOptions(decimal: true),
              decoration: TextFieldStyles.decoration(
                TextFormFieldDecoration(labelText: 'Cost'),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a number';
                }
                if (int.tryParse(value) == null) {
                  return 'Please enter a valid number';
                }
                return null;
              },
            ),
          ),
        ],
      ),
      const SizedBox(height: 20),
      // Stocks and low stocks
      Row(
        children: [
          Expanded(
            child: TextFormField(
              keyboardType:
                  const TextInputType.numberWithOptions(decimal: true),
              decoration: TextFieldStyles.decoration(
                  TextFormFieldDecoration(labelText: 'Stocks')),
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: TextFormField(
              keyboardType:
                  const TextInputType.numberWithOptions(decimal: true),
              decoration: TextFieldStyles.decoration(
                TextFormFieldDecoration(labelText: 'Low stock level'),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a number';
                }
                if (int.tryParse(value) == null) {
                  return 'Please enter a valid number';
                }
                return null;
              },
            ),
          ),
        ],
      ),
      // Save button
      Container(
        margin: const EdgeInsets.only(top: 30, bottom: 40),
        width: double.infinity,
        height: 50,
        child: ElevatedButton(
          style: ButtonCustomStyles.elevatedStyle(
            backgroundColor: AppColors.confirm,
          ),
          onPressed: () async {
            //
          },
          child: const Text(
            'SAVE',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
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
            onSuccess: (CategoryEntity? categoryEntity) {
              productNotifier.setCategories();
              if (categoryEntity != null) {
                productNotifier.setProductCategory(categoryEntity);
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
            onSuccess: (UomEntity? uomEntity) {
              productNotifier.setUomList();
              if (uomEntity != null) {
                setState(() {
                  productNotifier.setProductUom(uomEntity);
                });
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
