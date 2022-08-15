import 'package:flutter/material.dart';

import 'package:flutter_app_1/models/models.dart';
import 'package:flutter_app_1/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    //TODO: Delete 'home'
    MenuOption(
      route: 'home',
      nameRoot: 'Home Screen',
      screen: const HomeScreen(),
      icon: Icons.cabin,
    ),

    MenuOption(
      route: 'listview1',
      nameRoot: 'Lisview 1',
      screen: const Listview1Screen(),
      icon: Icons.list,
    ),

    MenuOption(
      route: 'alert',
      nameRoot: 'Alert Zone',
      screen: const AlertScreen(),
      icon: Icons.notification_important,
    ),

    MenuOption(
      route: 'card',
      nameRoot: 'Card',
      screen: const CardScreen(),
      icon: Icons.badge,
    ),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  /*static Map<String, Widget Function(BuildContext)> routes = {
    'home': (BuildContext context) => const HomeScreen(),
    'listview1': (BuildContext context) => const Listview1Screen(),
    'listview2': (BuildContext context) => const Listview2Screen(),
    'alert': (BuildContext context) => const AlertScreen(),
    'card': (BuildContext context) => const CardScreen(),
  };*/

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
