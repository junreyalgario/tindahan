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
                'https://fastly.picsum.photos/id/217/200/200.jpg?hmac=LoNAUhfCfURrqYjw6WECEWybn4B8y37k5G2odewlZ_Y',
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
                      fontSize: 20,
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
                      SizedBox(
                        height: 35.0,
                        child: ElevatedButton(
                          style: ButtonCustomStyles.elevatedStyle(
                            backgroundColor:
                                const Color.fromARGB(255, 62, 61, 61),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(
                                context, InventoryRoutes.product_details);
                          },
                          child: const Text(
                            'Details',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      SizedBox(
                        height: 35.0,
                        child: ElevatedButton(
                          style: ButtonCustomStyles.elevatedStyle(
                            backgroundColor:
                                const Color.fromARGB(255, 6, 122, 22),
                          ),
                          onPressed: () {
                            //
                          },
                          child: const Text(
                            'Re-stock',
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
      ),
    );
  }
}
