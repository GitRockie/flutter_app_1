import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simon Baker'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 5),
            child: CircleAvatar(
                backgroundColor: Colors.pink[900], child: const Text('SB')),
          )
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          backgroundColor: Colors.white70,
          maxRadius: 110,
          backgroundImage: NetworkImage(
              'https://www.arquitecturaydiseno.es/medio/2021/03/04/simon-baker-de-la-serie-el-mentalista_b3f5cb9d_1500x1000.jpg'),
        ),
      ),
    );
  }
}
