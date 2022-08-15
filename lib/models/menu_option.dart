import 'package:flutter/material.dart' show IconData, Widget;

class MenuOption {
  final String route;
  final IconData icon;
  final String nameRoot;
  final Widget screen;

  MenuOption(
      {required this.route,
      required this.icon,
      required this.nameRoot,
      required this.screen});
}
