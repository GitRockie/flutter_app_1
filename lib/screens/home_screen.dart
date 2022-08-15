import 'package:flutter/material.dart';

import 'package:flutter_app_1/router/app_routes.dart';

//import 'package:flutter_app_1/screens/screens.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Components'),
        backgroundColor: Colors.indigo,
        elevation: 0,
      ),
      body: ListView.separated(
          itemBuilder: (context, i) => ListTile(
                leading: Icon(menuOptions[i].icon, color: Colors.indigo),
                title: Text(menuOptions[i].nameRoot),
                onTap: () {
                  /* final route = MaterialPageRoute(
                builder: (context) => const Listview1Screen());

            Navigator.pushReplacement(context, route);*/

                  Navigator.pushNamed(context, menuOptions[i].route);
                },
              ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: menuOptions.length),
    );
  }
}
