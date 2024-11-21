import 'package:flutter/material.dart';
import 'package:tienda_pos/core/constant/app_colors.dart';
import 'package:tienda_pos/core/router/routes.dart';
import 'package:tienda_pos/core/styles/button_custom_styles.dart';

class ProductItem extends StatefulWidget {
  const ProductItem({super.key, required this.title});

  final String title;

  @override
  State<ProductItem> createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      color: AppColors.card_background,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRY_38OB-O3ct4_WTA4CLOW7rpDmuU8RkDVsQ&s',
                width: 120,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Row(
                    children: [
                      Text('Cost Price:'),
                      SizedBox(width: 5),
                      Text('₱12.00',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                  const Row(
                    children: [
                      Text('Stock:'),
                      SizedBox(width: 5),
                      Text('200',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: SizedBox(
                          height: 35.0,
                          child: ElevatedButton(
                            style: ButtonCustomStyles.elevatedStyle(
                              backgroundColor: AppColors.cancel,
                            ),
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, InventoryRoutes.product_details);
                            },
                            child: const Text(
                              'Details',
                              style: TextStyle(color: AppColors.confirm),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        flex: 1,
                        child: SizedBox(
                          height: 35.0,
                          child: ElevatedButton(
                            style: ButtonCustomStyles.elevatedStyle(
                              backgroundColor: AppColors.confirm,
                            ),
                            onPressed: () {
                              //
                            },
                            child: const Text(
                              'Inventory',
                              style: TextStyle(color: Colors.white),
                            ),
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
      ),
    );
  }
}
