import 'package:flutter/material.dart';
import 'package:tienda_pos/feature/inventory/domain/entities/category/category_entity.dart';
import 'package:tienda_pos/feature/pos/presentation/widgets/category_card.dart';

class CategoryTab extends StatefulWidget {
  const CategoryTab({
    super.key,
    required this.items,
    required this.onChangeTab,
  });

  final List<CategoryEntity> items;
  final Function(CategoryEntity? category) onChangeTab;

  @override
  State<StatefulWidget> createState() => _CategoryTabState();
}

class _CategoryTabState extends State<CategoryTab> {
  CategoryEntity? activeCategory;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.only(left: 13, right: 13),
        child: Row(
          children: [
            CategoryCard(
              categoryEntity: const CategoryEntity(name: 'All'),
              isActive: activeCategory == null,
              onPressed: (CategoryEntity categoryEntity) {
                setState(() {
                  activeCategory = null;
                });
                widget.onChangeTab(null);
              },
            ),
            ...widget.items.map((CategoryEntity category) {
              return CategoryCard(
                categoryEntity: category,
                isActive: activeCategory == category,
                onPressed: (CategoryEntity categoryEntity) {
                  setState(() {
                    activeCategory = category;
                  });
                  widget.onChangeTab(category);
                },
              );
            }),
          ],
        ),
      ),
    );
  }
}
