import 'package:flutter/material.dart';
import 'package:tienda_pos/core/router/flat_material_page_route.dart';
import 'package:tienda_pos/core/router/routes.dart';
import 'package:tienda_pos/core/widgets/splash_page.dart';
import 'package:tienda_pos/feature/analytics_report/presentation/pages/analytics_page.dart';
import 'package:tienda_pos/feature/inventory/domain/entities/product/product_entity.dart';
import 'package:tienda_pos/feature/settings/presentation/pages/settings_page.dart';
import 'package:tienda_pos/feature/user/presentation/pages/profile_page.dart';

import '../../feature/inventory/inventory.dart';
import '../../feature/pos/pos.dart';

class RouteNavigator {
  static final Map<String, FlatMaterialPageRoute Function(RouteSettings)>
      routeResolver = {
    // Initial route
    OtherRoutes.splash: (RouteSettings settings) {
      return FlatMaterialPageRoute(builder: (context) => const SplashPage());
    },
    // Inventory routes
    InventoryRoutes.home: (RouteSettings settings) {
      return FlatMaterialPageRoute(builder: (context) => const InventoryPage());
    },
    InventoryRoutes.product_details: (RouteSettings settings) {
      return FlatMaterialPageRoute(
        builder: (context) =>
            ProductEntry(productEntity: settings.arguments as ProductEntity?),
      );
    },
    // Analytics routes
    AnalyticsRoutes.home: (RouteSettings settings) {
      return FlatMaterialPageRoute(builder: (context) => const AnalyticsPage());
    },
    // Settings routes
    SettingsRoutes.home: (RouteSettings routeSettings) {
      return FlatMaterialPageRoute(builder: (context) => const SettingsPage());
    },
    // Profile routes
    ProfileRoutes.home: (RouteSettings routeSettings) {
      return FlatMaterialPageRoute(builder: (context) => const ProfilePage());
    }
  };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final route = routeResolver[settings.name];

    if (route != null) {
      return route(settings);
    } else {
      return FlatMaterialPageRoute(builder: (context) => const PosPage());
    }
  }
}
