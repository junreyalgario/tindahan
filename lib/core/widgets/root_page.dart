import 'package:flutter/material.dart';
import 'package:tienda_pos/core/constant/app_colors.dart';
import 'package:tienda_pos/feature/analytics_report/presentation/pages/analytics_page.dart';
import 'package:tienda_pos/feature/inventory/presentation/pages/inventory_page.dart';
import 'package:tienda_pos/feature/pos/presentation/pages/pos_page.dart';
import 'package:tienda_pos/feature/settings/presentation/pages/settings_page.dart';
import 'package:tienda_pos/feature/user/presentation/pages/profile_page.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const InventoryPage(),
    const AnalyticsPage(),
    const PosPage(),
    const SettingsPage(),
    const ProfilePage(),
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
    Icons.store,
    Icons.settings,
    Icons.account_box,
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.page_background,
      appBar: AppBar(
        title: Text(
          _titles[_selectedIndex],
          style: const TextStyle(color: Colors.white),
        ),
        leading: IconButton(
          color: Colors.white,
          icon: Icon(_icons[_selectedIndex]),
          onPressed: () {},
        ),
        backgroundColor: Colors.black,
      ),
      body: SafeArea(
        child: _pages[_selectedIndex],
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
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
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
            bottom: 5,
            left: MediaQuery.of(context).size.width * 0.5 - 40,
            child: Material(
              color: Colors.transparent,
              shape: const CircleBorder(),
              elevation: 0.0,
              shadowColor: Colors.transparent,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedIndex = 2;
                  });
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
                  child: const Icon(
                    Icons.store,
                    color: Colors.white,
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
