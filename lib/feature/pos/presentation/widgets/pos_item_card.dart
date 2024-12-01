import 'package:flutter/material.dart';
import 'package:tienda_pos/core/constant/app_colors.dart';
import 'package:tienda_pos/feature/inventory/domain/entities/product/product_entity.dart';
import 'package:tienda_pos/feature/pos/domain/entities/pos_order/pos_order_entity.dart';

class PosItemCard extends StatelessWidget {
  const PosItemCard({
    super.key,
    required this.posItem,
    required this.onTap,
  });

  final PosOrderEntity posItem;
  final Function(ProductEntity productEntity) onTap;

  bool get _showOrderCount => posItem.quantity > 0;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: AppColors.card_background,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(5),
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5.0),
                    child: Image.network(
                      'https://bluejeanchef.com/uploads/2019/04/Eggs-1280-.jpg',
                      width: double.infinity,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                  _showOrderCount
                      ? Container(
                          alignment: Alignment.center,
                          width: double.infinity,
                          height: 150,
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(158, 36, 36, 36),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                posItem.quantity.toStringAsFixed(1),
                                style: const TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                posItem.product.uom!.name!,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        )
                      : Container(),
                ],
              ),
              const SizedBox(height: 10),
              Text(
                posItem.product.name!,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: AppColors.highlight,
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '₱${posItem.product.price!.toStringAsFixed(2)}',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primary,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    '${posItem.product.inventory!.stockLevel} ${posItem.product.uom!.symbol}',
                    style: const TextStyle(
                      fontSize: 12,
                      color: AppColors.primary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        onTap: () {
          onTap(posItem.product);
        },
      ),
    );
  }
}
