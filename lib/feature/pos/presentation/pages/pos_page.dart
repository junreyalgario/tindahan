import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tienda_pos/core/constant/app_colors.dart';
import 'package:tienda_pos/core/router/routes.dart';
import 'package:tienda_pos/core/widgets/tienda_app.dart';
import 'package:tienda_pos/feature/inventory/domain/entities/category/category_entity.dart';
import 'package:tienda_pos/feature/inventory/domain/entities/product/product_entity.dart';
import 'package:tienda_pos/feature/pos/presentation/view_models/cart/cart_notifier.dart';
import 'package:tienda_pos/feature/pos/presentation/view_models/pos/pos_notifier.dart';
import 'package:tienda_pos/feature/pos/presentation/view_models/pos_category/pos_category_notifier.dart';
import 'package:tienda_pos/feature/pos/presentation/widgets/add_to_cart.dart';
import 'package:tienda_pos/feature/pos/presentation/widgets/category_tab.dart';
import 'package:tienda_pos/feature/pos/presentation/widgets/pos_bottom_sheet.dart';
import 'package:tienda_pos/feature/pos/presentation/widgets/pos_cart.dart';
import 'package:tienda_pos/feature/pos/presentation/widgets/pos_item_card.dart';

class PosPage extends ConsumerStatefulWidget {
  const PosPage({super.key});

  @override
  ConsumerState<PosPage> createState() => _PosPageState();
}

class _PosPageState extends ConsumerState<PosPage> {
  @override
  Widget build(BuildContext context) {
    return TiendaApp(
      isRootPage: true,
      child: Stack(
        children: [
          Column(
            children: [
              ..._buildHeader(),
              const SizedBox(height: 5),
              _buildProductMenu(),
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: _buildCartSection(),
          )
        ],
      ),
    );
  }

  _buildHeader() {
    final posCatState = ref.watch(posCategoryNotifierProvider);

    return [
      Container(
        height: 60,
        padding: const EdgeInsets.only(left: 16, right: 0, top: 10, bottom: 10),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                cursorColor: AppColors.primary,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: AppColors.card_background,
                  hintText: 'Search product',
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
          ],
        ),
      ),
      CategoryTab(
        items: posCatState.categories,
        value: posCatState.activeCategory,
        onChanged: (CategoryEntity? category) {
          ref
              .watch(posCategoryNotifierProvider.notifier)
              .setActiveCategory(category);
        },
      ),
    ];
  }

  _buildProductMenu() {
    final posState = ref.watch(posNotifierProvider);

    return Expanded(
      child: SingleChildScrollView(
        padding: const EdgeInsets.only(bottom: 100),
        child: posState.items.isNotEmpty
            ? Wrap(
                spacing: 5,
                runSpacing: 5,
                children: posState.items.map((posItem) {
                  return SizedBox(
                    width: MediaQuery.of(context).size.width / 2 - 16,
                    child: PosItemCard(
                      posItem: posItem,
                      onTap: (ProductEntity productEntity) async {
                        double qty = await _showAddToCart(productEntity);
                        if (qty > 0) {
                          ref.watch(cartNotifierProvider.notifier).addToCart(
                                posItem,
                                qty,
                              );
                        }
                      },
                    ),
                  );
                }).toList(),
              )
            : Container(
                margin: const EdgeInsets.only(top: 20),
                child: const Text(
                  'No more items to show.',
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
              ),
      ),
    );
  }

  _buildCartSection() {
    return Container(
      color: AppColors.primary,
      width: double.infinity,
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Column(
                children: [
                  const Text(
                    'PRODUCT QTY.',
                    style: TextStyle(
                      color: AppColors.highlight,
                    ),
                  ),
                  Text(
                    ref.watch(cartNotifierProvider).totalqty.toStringAsFixed(1),
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              margin: const EdgeInsets.only(bottom: 40, top: 10),
              child: InkWell(
                child: const Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                  size: 30,
                ),
                onTap: () {
                  _showCart();
                },
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Column(
                children: [
                  const Text(
                    'TOTAL AMOUNT',
                    style: TextStyle(
                      color: AppColors.highlight,
                    ),
                  ),
                  Text(
                    '₱${ref.watch(cartNotifierProvider).grandTotalAmount.toStringAsFixed(2)}',
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  _showCart() {
    double screenHeight = MediaQuery.of(context).size.height - 340;

    showModalBottomSheet(
      context: context,
      isDismissible: false,
      enableDrag: false,
      clipBehavior: Clip.none,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return PosBottomSheet(
          icon: Icons.shopping_cart,
          height: screenHeight,
          child: const PosCart(),
        );
      },
    );
  }

  Future<double> _showAddToCart(ProductEntity productEntity) async {
    final result = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          elevation: 10.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: AddToCart(productEntity: productEntity),
        );
      },
    );

    if (result != null) {
      return result;
    } else {
      return 0;
    }
  }
}
