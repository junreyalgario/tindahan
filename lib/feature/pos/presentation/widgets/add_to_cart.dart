import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tienda_pos/core/constant/app_colors.dart';
import 'package:tienda_pos/core/styles/button_custom_styles.dart';
import 'package:tienda_pos/core/styles/text_field_styles.dart';
import 'package:tienda_pos/feature/pos/domain/entities/pos_order/pos_order_entity.dart';
import 'package:tienda_pos/feature/pos/presentation/view_models/pos_item/pos_item_notifier.dart';

class AddToCart extends ConsumerStatefulWidget {
  const AddToCart({
    super.key,
    required this.posItem,
  });

  final PosOrderEntity posItem;

  @override
  ConsumerState<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends ConsumerState<AddToCart> {
  final TextEditingController _qtyController = TextEditingController();
  final TextEditingController _priceChangeController = TextEditingController();

  @override
  void initState() {
    super.initState();
    if (widget.posItem.quantity > 0) {
      _qtyController.text = widget.posItem.quantity.toString();
      _priceChangeController.text =
          widget.posItem.price > 0 ? widget.posItem.price.toString() : '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          const Text(
            'Add to Cart',
            style: TextStyle(
                fontWeight: FontWeight.w500,
                color: AppColors.highlight,
                fontSize: 20),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Product name',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Text(widget.posItem.product.name!,
                  style: const TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
          const Divider(
            color: Color.fromARGB(255, 214, 213, 213),
            thickness: 1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Stocks',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Text(
                  '${widget.posItem.product.inventory!.stockLevel} ${widget.posItem.product.uom?.symbol!}',
                  style: const TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
          const Divider(
            color: Color.fromARGB(255, 214, 213, 213),
            thickness: 1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Price',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Text(
                  '₱${widget.posItem.product.price!.toStringAsFixed(2)}/${widget.posItem.product.uom?.symbol!}',
                  style: const TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),

          Container(
            height: 40,
            margin: const EdgeInsets.only(top: 10),
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 230, 230, 230),
              borderRadius: BorderRadius.circular(5.0),
            ),
            alignment: Alignment.center,
            child: Text(
              '₱${ref.watch(posItemNotifierProvider(widget.posItem)).amount.toStringAsFixed(2)}',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: AppColors.secondary,
              ),
            ),
          ),
          const SizedBox(height: 10),
          RichText(
            textAlign: TextAlign.center,
            text: const TextSpan(
              children: [
                TextSpan(
                  text: 'Enter the new price',
                  style: TextStyle(
                    fontSize: 14,
                    color: AppColors.secondary,
                  ),
                ),
                TextSpan(
                  text: '\nLeave blank if the price remains unchanged.',
                  style: TextStyle(
                    fontSize: 10,
                    color: AppColors.secondary,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 5),
          SizedBox(
            height: 40,
            child: TextFormField(
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              controller: _priceChangeController,
              keyboardType:
                  const TextInputType.numberWithOptions(decimal: true),
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'^\d*\.?\d*$')),
              ],
              decoration: TextFieldStyles.decoration2(
                const InputDecoration(
                  contentPadding: EdgeInsets.all(5),
                  hintText: '₱0.00',
                  hintStyle: TextStyle(color: Colors.grey),
                ),
              ),
              onChanged: (value) {
                double price = double.tryParse(value) ?? 0;
                double qty = double.tryParse(_qtyController.text) ?? 0;
                ref
                    .read(posItemNotifierProvider(widget.posItem).notifier)
                    .setPriceChange(price: price, quantity: qty);
              },
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Enter product quantity',
            style: TextStyle(
              fontSize: 16,
              color: AppColors.secondary,
            ),
          ),
          const SizedBox(height: 5),
          SizedBox(
            height: 40,
            child: TextFormField(
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              controller: _qtyController,
              keyboardType:
                  const TextInputType.numberWithOptions(decimal: true),
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'^\d*\.?\d*$')),
              ],
              decoration: TextFieldStyles.decoration2(
                const InputDecoration(
                  contentPadding: EdgeInsets.all(5),
                  hintText: '0.0',
                  hintStyle: TextStyle(color: Colors.grey),
                ),
              ),
              onChanged: (value) {
                double qty = double.tryParse(value) ?? 0;
                ref
                    .read(posItemNotifierProvider(widget.posItem).notifier)
                    .setAmount(qty);
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
                    double qty = double.tryParse(_qtyController.text) ?? 0;
                    Navigator.pop(context, qty);
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
