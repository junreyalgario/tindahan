import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tienda_pos/core/constant/app_colors.dart';
import 'package:tienda_pos/core/styles/button_custom_styles.dart';
import 'package:tienda_pos/feature/pos/presentation/widgets/cart_order.dart';
import 'package:tienda_pos/feature/pos/presentation/widgets/pos_bottom_sheet.dart';
import 'package:tienda_pos/feature/pos/presentation/widgets/pos_payment.dart';

class PosCart extends ConsumerStatefulWidget {
  const PosCart({super.key});

  @override
  ConsumerState<PosCart> createState() => _PosCartState();
}

class _PosCartState extends ConsumerState<PosCart> {
  List<String> generatedList = List.generate(12, (index) => '');

  double get _orderListHeight {
    const maxItems = 6;
    return (generatedList.length < maxItems
            ? (56 * generatedList.length)
            : (56 * maxItems))
        .toDouble();
  }

  @override
  Widget build(BuildContext context) {
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
        SizedBox(
          height: _orderListHeight,
          child: SingleChildScrollView(
            padding: const EdgeInsets.only(left: 8, right: 8),
            child: Column(
              children: [
                ...generatedList.map((item) {
                  return const CartOrder();
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
            child: const Padding(
              padding: EdgeInsets.only(top: 8, bottom: 8),
              child: Row(
                children: [
                  SizedBox(width: 10),
                  Text(
                    'Total Qty: \t\t\t\t\t',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    '29.70',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Text(
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
                            '₱1090.45',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(width: 10),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 11, right: 11),
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
              const SizedBox(width: 10),
              Expanded(
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
              ),
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
