import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tienda_pos/core/constant/app_colors.dart';

class CartOrder extends ConsumerStatefulWidget {
  const CartOrder({super.key});

  @override
  ConsumerState<CartOrder> createState() => _CartOrderState();
}

class _CartOrderState extends ConsumerState<CartOrder> {
  @override
  Widget build(BuildContext context) {
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
                  const Expanded(
                    child: Text(
                      'Maharlika Blue',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontWeight: FontWeight.bold),
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
                    //
                  },
                ),
                Container(
                  width: 40,
                  alignment: Alignment.center,
                  child: const Text(
                    '8',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                InkWell(
                  child: const SizedBox(
                    height: 30,
                    child: Icon(Icons.add, size: 15, color: AppColors.success),
                  ),
                  onTap: () {
                    //
                  },
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
            width: 75,
            child: Row(
              children: [
                Text(
                  '₱1.88',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 40,
            child: IconButton(
              icon: const Icon(Icons.delete, color: AppColors.danger),
              onPressed: () {
                //
              },
            ),
          ),
        ],
      ),
    );
  }
}
