import 'package:flutter/material.dart';
import 'package:tienda_pos/feature/inventory/domain/entities/category/category_entity.dart';
import 'package:tienda_pos/feature/pos/presentation/widgets/category_card.dart';

class CategoryTab extends StatefulWidget {
  const CategoryTab({
    super.key,
    required this.items,
    this.value,
    required this.onChanged,
  });

  final List<CategoryEntity> items;
  final CategoryEntity? value;
  final Function(CategoryEntity? category) onChanged;

  @override
  State<StatefulWidget> createState() => _CategoryTabState();
}

class _CategoryTabState extends State<CategoryTab> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.only(left: 13, right: 13),
        child: Row(
          children: [
            ...widget.items.map((CategoryEntity category) {
              return CategoryCard(
                categoryEntity: category,
                isActive: widget.value == category,
                onPressed: widget.onChanged,
              );
            }),
          ],
        ),
      ),
    );
  }
}
