import 'dart:io';

import 'package:flutter/material.dart';

class TiendaLogo extends StatefulWidget {
  const TiendaLogo({super.key});

  @override
  State<TiendaLogo> createState() => _TiendaLogoState();
}

class _TiendaLogoState extends State<TiendaLogo> with TickerProviderStateMixin {
  late AnimationController _zoomController;
  late AnimationController _blinkController;
  late Animation<double> _zoomAnimation;
  late Animation<double> _blinkAnimation;

  @override
  void initState() {
    super.initState();

    // Initialize the zoom animation controller
    _zoomController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );

    // Initialize the blink animation controller
    _blinkController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    // Define the zoom animation
    _zoomAnimation = Tween<double>(begin: 0, end: 1.2).animate(
      CurvedAnimation(
        parent: _zoomController,
        curve: Curves.easeInOut,
      ),
    );

    // Define the blink animation
    _blinkAnimation = Tween<double>(begin: 1, end: 0.6).animate(
      CurvedAnimation(
        parent: _blinkController,
        curve: Curves.easeInOut,
      ),
    );

    // Start the zoom animation, and then start the blink animation once zoom is complete
    _zoomController.forward().then((_) {
      _blinkController.repeat(reverse: true);
    });
  }

  @override
  void dispose() {
    _zoomController.dispose();
    _blinkController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: _zoomAnimation,
      child: FadeTransition(
        opacity: _blinkAnimation,
        child: Text(
          'TINDAHAN',
          style: TextStyle(
            fontSize: 60.0,
            fontWeight: FontWeight.w900,
            color: Colors.black,
            letterSpacing: Platform.isIOS ? -8 : -5,
          ),
        ),
      ),
    );
  }
}
