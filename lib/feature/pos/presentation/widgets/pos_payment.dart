import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tienda_pos/core/constant/app_colors.dart';
import 'package:tienda_pos/core/styles/button_custom_styles.dart';
import 'package:tienda_pos/core/styles/text_field_styles.dart';
import 'package:tienda_pos/feature/pos/presentation/widgets/pos_bottom_sheet.dart';
import 'package:tienda_pos/feature/pos/presentation/widgets/pos_change.dart';

class PosPayment extends ConsumerStatefulWidget {
  const PosPayment({super.key});

  @override
  ConsumerState<PosPayment> createState() => _PosPaymentState();
}

class _PosPaymentState extends ConsumerState<PosPayment> {
  final List<int> bills = [10, 20, 50, 100, 200, 300, 400, 500, 1000];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 10),
          const Text(
            'Amount Payables',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: AppColors.highlight,
            ),
          ),
          const Text(
            '₱129.89',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40,
              color: AppColors.primary,
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'Amount Received',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: AppColors.highlight,
            ),
          ),
          const SizedBox(height: 5),
          SizedBox(
            width: 300,
            child: Column(
              children: [
                TextFormField(
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                  decoration: TextFieldStyles.decoration2(
                    const InputDecoration(
                      hintText: '₱0.00',
                      hintStyle: TextStyle(
                        fontSize: 30.0,
                        color: Colors.grey,
                      ),
                    ),
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
                const SizedBox(height: 20),
                const Text(
                  'Type or select bill tendered',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 10),
                _buildBillsPad(),
                const SizedBox(height: 20),
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
                          _showChange();
                        },
                        child: const Text(
                          'PROCEED',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  _buildBillsPad() {
    return Container(
      height: 230,
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(
            color: AppColors.secondary,
            width: 2.0,
          ),
          bottom: BorderSide(
            color: AppColors.secondary,
            width: 2.0,
          ),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 135,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                3,
                (rowIndex) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(3, (colIndex) {
                      return InkWell(
                        child: Container(
                          width: 95,
                          height: 40,
                          color: AppColors.secondary,
                          child: Center(
                            child: Text(
                              '${bills[3 * rowIndex + colIndex]}',
                              style: const TextStyle(
                                  fontSize: 18, color: Colors.white),
                            ),
                          ),
                        ),
                        onTap: () {
                          //
                        },
                      );
                    }),
                  );
                },
              ),
            ),
          ),
          InkWell(
            child: Container(
              width: double.infinity,
              height: 40,
              color: AppColors.secondary,
              margin: const EdgeInsets.only(top: 7),
              child: const Center(
                child: Text(
                  'EXACT AMOUNT',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
            onTap: () {
              //
            },
          )
        ],
      ),
    );
  }

  _showChange() {
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
          icon: Icons.monetization_on,
          height: screenHeight,
          child: const PosChange(),
        );
      },
    );
  }
}
