import 'package:flutter/material.dart';
import 'package:tienda_pos/feature/pos/domain/entities/pos_item/pos_item_entity.dart';
import 'package:tienda_pos/feature/pos/presentation/widgets/add_to_cart.dart';

Future<double?> showAddToCart(
    {required BuildContext context, required PosItemEntity posItem}) async {
  final result = await showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        elevation: 10.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: AddToCart(posItem: posItem),
      );
    },
  );

  return result;
}