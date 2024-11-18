import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tienda_pos/core/constant/app_colors.dart';
import 'package:tienda_pos/core/constant/enums.dart';
import 'package:tienda_pos/core/router/routes.dart';
import 'package:tienda_pos/core/widgets/tienda_app.dart';
import 'package:tienda_pos/feature/inventory/presentation/widgets/product_item.dart';

class InventoryPage extends ConsumerStatefulWidget {
  const InventoryPage({super.key});

  @override
  ConsumerState<InventoryPage> createState() => _InventoryPageState();
}

class _InventoryPageState extends ConsumerState<InventoryPage> {
  // Dummy data
  final List<dynamic> _productList = [
    'Bunay',
    'Mantika',
    'Maharlika Rice',
    'Jaguar Rice',
    'Jaguar 5kls Rice',
    'Rabbit White Rice',
    'Rabbit Yellow Rice',
    'Sibuyas',
    'Lasuna',
    'Luy-a',
    'Kamatis',
    'Paminta Durog'
  ];

  @override
  Widget build(BuildContext context) {
    return TiendaApp(
      isRootPage: true,
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            clipBehavior: Clip.none,
            floating: true,
            backgroundColor: Colors.white,
            flexibleSpace: Container(
              color: Colors.white,
              padding:
                  const EdgeInsets.only(left: 10, right: 10, top: 8, bottom: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: TextField(
                      cursorColor: AppColors.primary,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: AppColors.card_background,
                        hintText: 'Search',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 10.0,
                          horizontal: 15.0,
                        ),
                        suffixIcon: IconButton(
                          icon: const Icon(Icons.search),
                          onPressed: () {
                            // Search
                          },
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.add),
                    onPressed: () {
                      Navigator.of(context)
                          .pushNamed(InventoryRoutes.product_details);
                    },
                  ),
                  PopupMenuButton<ProductFilter>(
                    icon: const Icon(Icons.filter_list),
                    color: Colors.white,
                    onSelected: (value) {
                      // Handle selection
                    },
                    itemBuilder: (BuildContext context) =>
                        <PopupMenuEntry<ProductFilter>>[
                      const PopupMenuItem<ProductFilter>(
                        value: ProductFilter.all,
                        child: Text('All'),
                      ),
                      const PopupMenuItem<ProductFilter>(
                        value: ProductFilter.archived,
                        child: Text('Archived'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(bottom: 30.0),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: ProductItem(title: _productList[index]),
                  );
                },
                childCount: _productList.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
