import 'package:flutter/material.dart';

import 'package:flutter_app_1/models/models.dart';
import 'package:flutter_app_1/screens/listview_builder_screen.dart';
import 'package:flutter_app_1/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    /* MenuOption(
      route: 'home',
      nameRoot: 'Home Screen',
      screen: const HomeScreen(),
      icon: Icons.cabin,
    ),*/

    MenuOption(
      route: 'listview1',
      nameRoot: 'Listview 1',
      screen: const Listview1Screen(),
      icon: Icons.list,
    ),
    MenuOption(
      route: 'listview2',
      nameRoot: 'Listview 2',
      screen: const Listview2Screen(),
      icon: Icons.list_alt,
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
    MenuOption(
      route: 'animated',
      nameRoot: 'Animated Container',
      screen: const AnimatedScreen(),
      icon: Icons.animation_outlined,
    ),
    MenuOption(
      route: 'inputs',
      nameRoot: 'Inputs',
      screen: const InputsScreen(),
      icon: Icons.input_rounded,
    ),
    MenuOption(
      route: 'slider',
      nameRoot: 'Slide & Check',
      screen: const SliderScreen(),
      icon: Icons.slow_motion_video_rounded,
    ),
    MenuOption(
      route: 'listviewbuilder',
      nameRoot: 'Infinite Scroll & Pull to Refresh',
      screen: const ListviewBuilderScreen(),
      icon: Icons.corporate_fare,
    ),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});

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
