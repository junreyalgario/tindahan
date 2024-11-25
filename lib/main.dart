import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tienda_pos/core/constant/app_colors.dart';
import 'package:tienda_pos/core/router/route_navigator.dart';
import 'package:tienda_pos/core/router/routes.dart';

void main() {
  runApp(
    const ProviderScope(child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TiendaPOS',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.white,
          primary: AppColors.secondary,
          error: AppColors.error,
        ),
        useMaterial3: true,
      ),
      initialRoute: OtherRoutes.splash,
      onGenerateRoute: RouteNavigator.onGenerateRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}
