import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  final options = const [
    'Roman Kostyuchenko',
    'Sergi Kostyuchenko',
    'Mauricio Jauregui Lauffer ',
    'Secot',
    'Meri Miró'
  ];

  const Listview1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Listview1 Type 1'),
        ),
        body: ListView(
          children: [
            ...options
                .map((team) => ListTile(
                      title: Text(team),
                      trailing: const Icon(Icons.arrow_forward_ios_outlined),
                    ))
                .toList()

            //ListTile(
            //title: Text('Our Team'),
            //),
          ],
        ));
  }
}
