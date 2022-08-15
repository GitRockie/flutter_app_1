import 'package:flutter/material.dart';
import 'package:flutter_app_1/screens/alert_screen.dart';
import 'package:flutter_app_1/screens/card_screen.dart';

import 'package:flutter_app_1/screens/home_screen.dart';
import 'package:flutter_app_1/screens/listview1_screen.dart';
import 'package:flutter_app_1/screens/listview2_screen.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static Map<String, Widget Function(BuildContext)> routes = {
    'home': (BuildContext context) => const HomeScreen(),
    'listview1': (BuildContext context) => const Listview1Screen(),
    'listview2': (BuildContext context) => const Listview2Screen(),
    'alert': (BuildContext context) => const AlertScreen(),
    'card': (BuildContext context) => const CardScreen(),
  };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
