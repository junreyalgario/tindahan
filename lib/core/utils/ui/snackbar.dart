import 'package:flutter/material.dart';
import 'package:tienda_pos/core/constant/app_colors.dart';

void showTopSnackbar({
  required BuildContext context,
  required String message,
  Color color = AppColors.primary,
}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(message),
      // behavior: SnackBarBehavior.floating,
      backgroundColor: color,
      duration: const Duration(seconds: 2),
    ),
  );
}
