import 'package:flutter/material.dart';
import 'package:tienda_pos/core/router/flat_material_page_route.dart';
import 'package:tienda_pos/core/router/routes.dart';
import 'package:tienda_pos/core/widgets/splash_page.dart';
import 'package:tienda_pos/feature/analytics_report/presentation/pages/analytics_page.dart';
import 'package:tienda_pos/feature/settings/presentation/pages/settings_page.dart';
import 'package:tienda_pos/feature/user/presentation/pages/profile_page.dart';

import '../../feature/inventory/inventory.dart';
import '../../feature/pos/pos.dart';

class RouteNavigator {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case OtherRoutes.splash:
        return FlatMaterialPageRoute(builder: (context) => const SplashPage());
      // Inventory pages
      case InventoryRoutes.home:
        return FlatMaterialPageRoute(
            builder: (context) => const InventoryPage());
      case InventoryRoutes.product_details:
        return FlatMaterialPageRoute(
            builder: (context) => const ProductEntry());
      // Analytics pages
      case AnalyticsRoutes.home:
        return FlatMaterialPageRoute(
            builder: (context) => const AnalyticsPage());
      // Settings pages
      case SettingsRoutes.home:
        return FlatMaterialPageRoute(
            builder: (context) => const SettingsPage());
      // Profile pages
      case ProfileRoutes.home:
        return FlatMaterialPageRoute(builder: (context) => const ProfilePage());
      default:
        return FlatMaterialPageRoute(builder: (context) => const PosPage());
    }
  }
}
