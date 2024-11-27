import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tienda_pos/core/constant/app_colors.dart';
import 'package:tienda_pos/core/styles/button_custom_styles.dart';

class PosChange extends ConsumerStatefulWidget {
  final double amountPayable;
  final double amountReceived;
  final double changedAmount;

  const PosChange({
    super.key,
    required this.amountPayable,
    required this.amountReceived,
    required this.changedAmount,
  });

  @override
  ConsumerState<PosChange> createState() => _PosChangeState();
}

class _PosChangeState extends ConsumerState<PosChange> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        const Text(
          'COMPLETED',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 40,
            color: AppColors.primary,
          ),
        ),
        const SizedBox(height: 60),
        Text(
          'PAYABLE: ₱${widget.amountPayable.toStringAsFixed(2)}',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: Colors.grey,
          ),
        ),
        Text(
          'AMOUNT RECEIVED: ₱${widget.amountReceived.toStringAsFixed(2)}',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: Colors.grey,
          ),
        ),
        const SizedBox(height: 20),
        const Text(
          'CHANGE',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: AppColors.highlight,
          ),
        ),
        Text(
          '₱${widget.changedAmount.toStringAsFixed(2)}',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 60,
            color: AppColors.primary,
          ),
        ),
        const SizedBox(height: 60),
        SizedBox(
          width: 250,
          height: 50,
          child: ElevatedButton(
            style: ButtonCustomStyles.elevatedStyle(
              backgroundColor: AppColors.confirm,
            ),
            onPressed: () async {
              Navigator.of(context).pop();
            },
            child: const Text(
              'NEW TRANSACTION',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
