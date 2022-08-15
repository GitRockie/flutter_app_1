import 'package:flutter/material.dart';

import 'package:flutter_app_1/screens/screens.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Components'),
        elevation: 0,
      ),
      body: ListView.separated(
        itemCount: 10,
        itemBuilder: (context, index) => ListTile(
          leading: const Icon(Icons.access_time_outlined),
          title: const Text('Root name'),
          onTap: () {
            /* final route = MaterialPageRoute(
                builder: (context) => const Listview1Screen());

            Navigator.pushReplacement(context, route);*/

            Navigator.pushNamed(context, 'alert');
          },
        ),
        separatorBuilder: (_, __) => const Divider(),
      ),
    );
  }
}
