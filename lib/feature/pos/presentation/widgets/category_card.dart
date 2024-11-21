import 'package:flutter/material.dart';
import 'package:tienda_pos/core/constant/app_colors.dart';
import 'package:tienda_pos/feature/inventory/domain/entities/category/category_entity.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.categoryEntity,
    required this.isActive,
    required this.onPressed,
  });

  final CategoryEntity categoryEntity;
  final bool isActive;
  final Function(CategoryEntity categoryEntity) onPressed;

  Color get _bgColor =>
      isActive ? AppColors.primary : AppColors.card_background;

  Color get _textColor => isActive ? Colors.white : AppColors.primary;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: _bgColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(5),
        child: Container(
          height: 35,
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Center(
            child: Text(
              categoryEntity.name!.toUpperCase(),
              style: TextStyle(
                  fontSize: 14, fontWeight: FontWeight.bold, color: _textColor),
            ),
          ),
        ),
        onTap: () {
          onPressed(categoryEntity);
        },
      ),
    );
  }
}
