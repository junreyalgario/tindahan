import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tienda_pos/core/constant/app_colors.dart';
import 'package:tienda_pos/core/styles/button_custom_styles.dart';

class PosChange extends ConsumerStatefulWidget {
  const PosChange({super.key});

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
          'DONE',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 40,
            color: AppColors.primary,
          ),
        ),
        const SizedBox(height: 60),
        const Text(
          'PAYABLE: ₱234.89',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: Colors.grey,
          ),
        ),
        const Text(
          'AMOUNT RECEIVED: ₱1000.00',
          style: TextStyle(
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
        const Text(
          '₱0.00',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 80,
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
              Navigator.of(context).pop();
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
