import 'package:flutter/material.dart';
import 'package:tienda_pos/core/router/router_navigator.dart';
import 'package:tienda_pos/core/router/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TiendaPOS',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      initialRoute: OtherRoutes.splash,
      onGenerateRoute: RouteNavigator.onGenerateRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}
