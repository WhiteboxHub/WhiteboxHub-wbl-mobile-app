import 'package:flutter/material.dart';

enum MenuItemType { home, profile, settings }

class MenuItem {
  final MenuItemType type;
  final String title;
  final IconData icon;
  final Widget? child;

  MenuItem({
    required this.type,
    required this.title,
    required this.icon,
    this.child,
  });
}

List<MenuItem> generateMenuItems(BuildContext context) {
  return [
    MenuItem(
      type: MenuItemType.home,
      title: 'Home',
      icon: Icons.home,
      child: Container(),
    ),
    MenuItem(
      type: MenuItemType.profile,
      title: 'Profile',
      icon: Icons.person,
      child: Container(),
    ),
    MenuItem(
      type: MenuItemType.settings,
      title: 'Settings',
      icon: Icons.settings,
      child: Container(),
    ),
  ];
}
