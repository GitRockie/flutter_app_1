import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  final options = const [
    'Roman Kostyuchenko',
    'Sergi Kostyuchenko',
    'Mauricio Jauregui Lauffer ',
    'Secot',
  ];

  const Listview1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Listview Type 1'),
          elevation: 0,
        ),
        body: ListView(
          children: [
            ...options
                .map((team) => ListTile(
                      title: Text(team),
                      trailing: const Icon(Icons.arrow_forward_ios_outlined),
                      iconColor: Colors.pink[300],
                    ))
                .toList(),

            //ListTile(
            //title: Text('Our Team'),
            //),
          ],
        ));
  }
}
