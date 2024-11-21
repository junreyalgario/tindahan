import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tienda_pos/core/constant/app_colors.dart';
import 'package:tienda_pos/core/styles/button_custom_styles.dart';
import 'package:tienda_pos/core/styles/text_field_styles.dart';
import 'package:tienda_pos/feature/inventory/domain/entities/product/product_entity.dart';

class AddToCart extends ConsumerStatefulWidget {
  const AddToCart({
    super.key,
    required this.productEntity,
  });

  final ProductEntity productEntity;

  @override
  ConsumerState<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends ConsumerState<AddToCart> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          // const Text(
          //   'Add to Cart',
          //   overflow: TextOverflow.ellipsis,
          //   textAlign: TextAlign.center,
          //   style: TextStyle(fontSize: 20, color: AppColors.highlight),
          // ),
          const Text(
            'Add to Cart',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
          ),
          const SizedBox(height: 20),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Product name',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Text('Maharlika Rice',
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
          const Divider(
            color: Color.fromARGB(255, 214, 213, 213),
            thickness: 1,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Stocks', style: TextStyle(fontWeight: FontWeight.bold)),
              Text('120.78 kl', style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
          const Divider(
            color: Color.fromARGB(255, 214, 213, 213),
            thickness: 1,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Price', style: TextStyle(fontWeight: FontWeight.bold)),
              Text('54.00 kl', style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),

          Container(
            height: 50,
            margin: const EdgeInsets.only(top: 10),
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 230, 230, 230),
              borderRadius: BorderRadius.circular(5.0),
            ),
            alignment: Alignment.center,
            child: const Text(
              '₱123.00',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: AppColors.secondary,
              ),
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Enter product quantity',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 5),
          SizedBox(
            height: 50,
            child: TextFormField(
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              keyboardType:
                  const TextInputType.numberWithOptions(decimal: true),
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'^\d*\.?\d*$')),
              ],
              decoration: TextFieldStyles.decoration2(
                const InputDecoration(contentPadding: EdgeInsets.all(5)),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return '';
                }
                return null;
              },
              onChanged: (value) {
                //
              },
            ),
          ),
          // Actions
          const SizedBox(height: 30),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  style: ButtonCustomStyles.elevatedStyle(
                    backgroundColor: AppColors.cancel,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Cancel',
                    style: TextStyle(color: AppColors.confirm),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: ElevatedButton(
                  style: ButtonCustomStyles.elevatedStyle(
                    backgroundColor: AppColors.confirm,
                  ),
                  onPressed: () async {
                    //
                  },
                  child: const Text(
                    'CONFIRM',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
