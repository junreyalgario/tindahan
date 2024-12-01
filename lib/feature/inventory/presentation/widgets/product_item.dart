import 'package:flutter/material.dart';
import 'package:tienda_pos/core/constant/app_colors.dart';
import 'package:tienda_pos/core/router/routes.dart';
import 'package:tienda_pos/core/utils/logger.dart';
import 'package:tienda_pos/feature/inventory/domain/entities/product/product_entity.dart';

class ProductItem extends StatefulWidget {
  const ProductItem({super.key, required this.productEntity, this.onUpdate});

  final ProductEntity productEntity;
  final Function(dynamic)? onUpdate;

  @override
  State<ProductItem> createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  @override
  Widget build(BuildContext context) {
    Log.info('WIDGET ->>> ${widget.productEntity}');

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
                  height: 160,
                  fit: BoxFit.cover,
                ),
              ),
              onTap: () async {
                final result = await Navigator.pushNamed(
                  context,
                  InventoryRoutes.product_details,
                  arguments: widget.productEntity,
                );

                if (widget.onUpdate != null) {
                  widget.onUpdate!(result);
                }
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
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: AppColors.primary,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Divider(thickness: 0.3),
                  Row(
                    children: [
                      const Text('Current cost:'),
                      const Spacer(),
                      Text(
                          '₱${widget.productEntity.inventory!.currentCost.toStringAsFixed(2)}',
                          style: const TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                  const Divider(thickness: 0.3),
                  Row(
                    children: [
                      const Text('Selling price:'),
                      const Spacer(),
                      Text('₱${widget.productEntity.price?.toStringAsFixed(2)}',
                          style: const TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                  const Divider(thickness: 0.3),
                  Row(
                    children: [
                      const Text('Stock count:'),
                      const Spacer(),
                      Text(
                        widget.productEntity.inventory!.stockLevel
                            .toStringAsFixed(1),
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(width: 2),
                      Text(widget.productEntity.uom!.symbol!)
                    ],
                  ),
                  const Divider(thickness: 0.3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        child: const Icon(
                          Icons.delete,
                          color: AppColors.danger,
                        ),
                        onTap: () {
                          //
                        },
                      ),
                      const SizedBox(width: 20),
                      GestureDetector(
                        child: const Icon(
                          Icons.add_circle,
                          color: AppColors.confirm,
                        ),
                        onTap: () {
                          //
                        },
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
