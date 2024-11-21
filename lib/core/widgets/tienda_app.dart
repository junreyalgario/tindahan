// ignore_for_file: non_constant_identifier_names

import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:tienda_pos/core/constant/app_colors.dart';
import 'package:tienda_pos/core/router/routes.dart';

class TiendaApp extends StatefulWidget {
  const TiendaApp(
      {super.key, required this.child, this.isRootPage = false, this.title});

  final bool isRootPage;
  final String? title;
  final Widget child;

  static int bottom_nav_index = 2;

  @override
  State<TiendaApp> createState() => _TiendaAppState();
}

class _TiendaAppState extends State<TiendaApp> {
  final List<String> _pages = [
    InventoryRoutes.home,
    AnalyticsRoutes.home,
    PosRoutes.home,
    SettingsRoutes.home,
    ProfileRoutes.home,
  ];

  final List<String> _titles = [
    'Inventory',
    'Analytics',
    'POS',
    'Settings',
    'Profile',
  ];

  final List<IconData> _icons = [
    Icons.inventory,
    Icons.analytics,
    Icons.point_of_sale,
    Icons.settings,
    Icons.account_box,
  ];

  @override
  void initState() {
    super.initState();
  }

  void _onBottomNavItemTapped(int index) {
    Navigator.of(context)
        .pushNamedAndRemoveUntil(_pages[index], (route) => false);
    TiendaApp.bottom_nav_index = index;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.page_background,
      appBar: AppBar(
        title: Text(
          widget.title ?? _titles[TiendaApp.bottom_nav_index],
          style: const TextStyle(color: Colors.white),
        ),
        leading: IconButton(
          color: Colors.white,
          highlightColor: widget.isRootPage ? Colors.transparent : null,
          icon: Icon(widget.isRootPage
              ? _icons[TiendaApp.bottom_nav_index]
              : Icons.arrow_back),
          onPressed: () {
            if (!widget.isRootPage) {
              Navigator.pop(context);
            }
          },
        ),
        backgroundColor: Colors.black,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () {
            //
          },
          child: widget.child,
        ),
      ),
      bottomNavigationBar: Stack(
        clipBehavior: Clip.none,
        children: [
          BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.black,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey,
            unselectedFontSize: 12,
            selectedFontSize: 12,
            currentIndex: TiendaApp.bottom_nav_index,
            onTap: _onBottomNavItemTapped,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.inventory),
                label: 'Inventory',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.analytics),
                label: 'Analytics',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.store),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Settings',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_box),
                label: 'Profile',
              ),
            ],
          ),
          // POS button
          Positioned(
            bottom: Platform.isIOS ? 30 : 5,
            left: MediaQuery.of(context).size.width * 0.5 - 40,
            child: Material(
              color: Colors.transparent,
              shape: const CircleBorder(),
              elevation: 0.0,
              shadowColor: Colors.transparent,
              child: GestureDetector(
                onTap: () {
                  _onBottomNavItemTapped(2);
                },
                child: Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: const Color.fromARGB(255, 24, 24, 24),
                      width: 3,
                    ),
                  ),
                  child: Icon(
                    Icons.point_of_sale,
                    color: TiendaApp.bottom_nav_index == 2
                        ? Colors.white
                        : Colors.grey,
                    size: 30,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
