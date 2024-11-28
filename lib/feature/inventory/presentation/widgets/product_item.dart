import 'package:flutter/material.dart';
import 'package:tienda_pos/core/constant/app_colors.dart';
import 'package:tienda_pos/core/router/routes.dart';
import 'package:tienda_pos/feature/inventory/domain/entities/product/product_entity.dart';

class ProductItem extends StatefulWidget {
  const ProductItem({super.key, required this.productEntity});

  final ProductEntity productEntity;

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
            InkWell(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5.0),
                child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRY_38OB-O3ct4_WTA4CLOW7rpDmuU8RkDVsQ&s',
                  width: 160,
                  height: 190,
                  fit: BoxFit.cover,
                ),
              ),
              onTap: () {
                Navigator.pushNamed(
                  context,
                  InventoryRoutes.product_details,
                  arguments: widget.productEntity,
                );
              },
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Text(
                          widget.productEntity.name!,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: AppColors.primary,
                          ),
                        ),
                      ),
                      Text('(${widget.productEntity.uom!.symbol!})')
                    ],
                  ),
                  const Divider(thickness: 0.3),
                  Row(
                    children: [
                      const Text('Cost Price:'),
                      const SizedBox(width: 5),
                      Text(
                          '₱${widget.productEntity.currentCost?.toStringAsFixed(2)}',
                          style: const TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                  const Divider(thickness: 0.3),
                  Row(
                    children: [
                      const Text('Selling Price:'),
                      const SizedBox(width: 5),
                      Text('₱${widget.productEntity.price?.toStringAsFixed(2)}',
                          style: const TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                  const Divider(thickness: 0.3),
                  Row(
                    children: [
                      const Text('Stock count:'),
                      const SizedBox(width: 5),
                      Text(
                          widget.productEntity.stockOnHand != null
                              ? widget.productEntity.stockOnHand!
                                  .toStringAsFixed(1)
                              : '0.0',
                          style: const TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                  const Divider(thickness: 0.3),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        iconSize: 30,
                        color: AppColors.danger,
                        icon: const Icon(Icons.delete),
                        onPressed: () {
                          //
                        },
                      ),
                      IconButton(
                        iconSize: 30,
                        color: AppColors.confirm,
                        icon: const Icon(Icons.add_circle),
                        onPressed: () {
                          //
                        },
                      )
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
