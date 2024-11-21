import 'package:flutter/material.dart';
import 'package:tienda_pos/core/constant/app_colors.dart';

class PosBottomSheet extends StatelessWidget {
  const PosBottomSheet({
    super.key,
    required this.icon,
    required this.height,
    required this.child,
  });

  final IconData icon;
  final double height;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: height,
          width: double.infinity,
          color: Colors.white,
          clipBehavior: Clip.none,
          padding: const EdgeInsets.only(top: 15),
          child: child,
        ),
        Positioned(
          top: -50,
          right: 0,
          left: 0,
          child: Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: AppColors.secondary,
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.white,
                width: 3,
              ),
            ),
            child: Icon(
              icon,
              color: AppColors.cancel,
            ),
          ),
        )
      ],
    );
  }
}
