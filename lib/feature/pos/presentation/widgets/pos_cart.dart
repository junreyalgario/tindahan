import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tienda_pos/core/constant/app_colors.dart';
import 'package:tienda_pos/core/styles/button_custom_styles.dart';
import 'package:tienda_pos/feature/pos/presentation/view_models/cart/cart_notifier.dart';
import 'package:tienda_pos/feature/pos/presentation/widgets/cart_item.dart';
import 'package:tienda_pos/feature/pos/presentation/widgets/pos_bottom_sheet.dart';
import 'package:tienda_pos/feature/pos/presentation/widgets/pos_payment.dart';

class PosCart extends ConsumerStatefulWidget {
  const PosCart({super.key});

  @override
  ConsumerState<PosCart> createState() => _PosCartState();
}

class _PosCartState extends ConsumerState<PosCart> {
  double get _orderListHeight {
    const maxItems = 6;
    return (ref.watch(cartNotifierProvider).posItems.length < maxItems
            ? (56 * ref.watch(cartNotifierProvider).posItems.length)
            : (56 * maxItems))
        .toDouble();
  }

  @override
  Widget build(BuildContext context) {
    final cartState = ref.watch(cartNotifierProvider);

    return Column(
      children: [
        // Header
        Padding(
          padding: const EdgeInsets.only(left: 8, right: 8),
          child: Card(
            elevation: 0,
            color: AppColors.primary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    height: 35,
                    padding: const EdgeInsets.all(8),
                    child: const Text(
                      'Product',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 80,
                  child: Text(
                    'Quantity',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
                const SizedBox(
                  width: 115,
                  child: Text(
                    'Subtotal',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
        // Order List
        cartState.posItems.isEmpty
            ? Container(
                margin: const EdgeInsets.only(top: 20, bottom: 20),
                child: const Text(
                  'No more items to show.',
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
              )
            : SizedBox(
                height: _orderListHeight,
                child: SingleChildScrollView(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: Column(
                    children: [
                      ...cartState.posItems.entries.map((item) {
                        return CartItem(posItem: item.value);
                      }),
                    ],
                  ),
                ),
              ),
        // Summary
        Padding(
          padding: const EdgeInsets.only(left: 8, right: 8),
          child: Card(
            elevation: 0,
            color: AppColors.primary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 8),
              child: Row(
                children: [
                  const SizedBox(width: 10),
                  const Text(
                    'Total Qty: \t\t\t\t\t',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    cartState.totalqty.toStringAsFixed(1),
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      const Text(
                        'Grand Total:',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        width: 130,
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            '₱${cartState.grandTotalAmount.toStringAsFixed(2)}',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(width: 10),
                ],
              ),
            ),
          ),
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.only(left: 11, right: 11, bottom: 20),
          child: Row(
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
                    'BACK',
                    style: TextStyle(color: AppColors.confirm),
                  ),
                ),
              ),
              SizedBox(width: cartState.posItems.isNotEmpty ? 10 : 0),
              cartState.posItems.isNotEmpty
                  ? Expanded(
                      child: ElevatedButton(
                        style: ButtonCustomStyles.elevatedStyle(
                          backgroundColor: AppColors.confirm,
                        ),
                        onPressed: () async {
                          _showPayment();
                        },
                        child: const Text(
                          'CHECKOUT',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )
                  : Container(),
            ],
          ),
        ),
      ],
    );
  }

  _showPayment() {
    double screenHeight = MediaQuery.of(context).size.height - 230;

    showModalBottomSheet(
      context: context,
      // isDismissible: false,
      enableDrag: false,
      elevation: 5,
      clipBehavior: Clip.none,
      isScrollControlled: true,
      barrierColor: Colors.black.withOpacity(0),
      builder: (BuildContext context) {
        return PosBottomSheet(
          icon: Icons.payment,
          height: screenHeight,
          child: const PosPayment(),
        );
      },
    );
  }
}
