import 'package:flutter/material.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  int navDrawerIndex = 0;

  @override
  Widget build(BuildContext context) {
    return NavigationDrawer(
      selectedIndex: navDrawerIndex,
      onDestinationSelected: (int index) {
        setState(() {
          navDrawerIndex = index;
        });
        // Handle navigation here, e.g., using GoRouter or Navigator
        // context.push('/some_route'); // Example of navigation
      },
      children: [
        NavigationDrawerDestination(
          icon: Icon(Icons.add),
          label: Text('Home Screen'),
        ),
        NavigationDrawerDestination(
          icon: Icon(Icons.add_shopping_cart_rounded),
          label: Text('Otra pantalla'),
        ),
      ],
    );
  }
}
