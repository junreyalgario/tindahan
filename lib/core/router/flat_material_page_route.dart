import 'package:flutter/material.dart';

// Override `transitionDuration` to remove default screen transition animation
class FlatMaterialPageRoute extends MaterialPageRoute {
  FlatMaterialPageRoute({required super.builder});

  @override
  Duration get transitionDuration => const Duration(milliseconds: 0);
}
