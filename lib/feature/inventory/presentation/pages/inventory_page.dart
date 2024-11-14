import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tienda_pos/core/constant/app_colors.dart';
import 'package:tienda_pos/core/styles/button_custom_styles.dart';
import 'package:tienda_pos/feature/inventory/presentation/widgets/product_item.dart';

class InventoryPage extends ConsumerStatefulWidget {
  const InventoryPage({super.key});

  @override
  ConsumerState<InventoryPage> createState() => _InventoryPageState();
}

class _InventoryPageState extends ConsumerState<InventoryPage> {
  // Dummy data
  final List<dynamic> _productList = [
    'Bunay',
    'Mantika',
    'Maharlika Rice',
    'Jaguar Rice',
    'Jaguar 5kls Rice',
    'Rabbit White Rice',
    'Rabbit Yellow Rice',
    'Sibuyas',
    'Lasuna',
    'Luy-a',
    'Kamatis',
    'Paminta Durog'
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                height: 35.0,
                child: ElevatedButton(
                  style: ButtonCustomStyles.elevatedStyle(
                    backgroundColor: AppColors.primary,
                  ),
                  onPressed: () {},
                  child: const Text(
                    'New',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(width: 5),
              SizedBox(
                height: 35.0,
                child: ElevatedButton(
                  style: ButtonCustomStyles.elevatedStyle(
                      backgroundColor: const Color.fromARGB(255, 203, 38, 26)),
                  onPressed: () {},
                  child: const Text(
                    'Delete',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
          //
          ..._productList.map((item) {
            return ProductItem(title: item);
          })
          //
        ],
      ),
    );
  }
}
