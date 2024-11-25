import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tienda_pos/core/constant/app_colors.dart';
import 'package:tienda_pos/core/widgets/dialog.dart';
import 'package:tienda_pos/feature/pos/domain/entities/pos_item/pos_item_entity.dart';
import 'package:tienda_pos/feature/pos/presentation/view_models/cart/cart_notifier.dart';

class CartItem extends ConsumerStatefulWidget {
  final PosItemEntity posItem;

  const CartItem({super.key, required this.posItem});

  @override
  ConsumerState<CartItem> createState() => _CartItemState();
}

class _CartItemState extends ConsumerState<CartItem> {
  @override
  Widget build(BuildContext context) {
    final cartNotifier = ref.watch(cartNotifierProvider.notifier);

    return Card(
      elevation: 0,
      color: AppColors.card_background,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 45,
              padding: const EdgeInsets.all(8),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5.0),
                    child: Image.network(
                      'https://bluejeanchef.com/uploads/2019/04/Eggs-1280-.jpg',
                      width: 30,
                      // height: 30,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 4),
                  Expanded(
                    child: Text(
                      widget.posItem.product!.name!,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 40,
            width: 90,
            child: Row(
              children: [
                InkWell(
                  child: const SizedBox(
                    height: 30,
                    child:
                        Icon(Icons.remove, size: 15, color: AppColors.danger),
                  ),
                  onTap: () {
                    cartNotifier.editQuantity(
                        widget.posItem.product!.id!, CartOperation.subract);
                  },
                ),
                Container(
                  width: 40,
                  alignment: Alignment.center,
                  child: Text(
                    widget.posItem.orderCount.toStringAsFixed(1),
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                InkWell(
                  child: const SizedBox(
                    height: 30,
                    child: Icon(Icons.add, size: 15, color: AppColors.success),
                  ),
                  onTap: () {
                    cartNotifier.editQuantity(
                        widget.posItem.product!.id!, CartOperation.add);
                  },
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
            width: 75,
            child: Row(
              children: [
                Text(
                  '₱${widget.posItem.subTotalAmount}',
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 40,
            child: IconButton(
              icon: const Icon(Icons.delete, color: AppColors.danger),
              onPressed: () {
                showConfirmDialog(
                    context: context,
                    title: 'Maharlika Rice',
                    message: 'Remove item?',
                    confirmText: 'Remove',
                    confirmColor: AppColors.danger,
                    onConfirm: () {
                      //
                    });
              },
            ),
          ),
        ],
      ),
    );
  }
}
