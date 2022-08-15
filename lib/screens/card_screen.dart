import 'package:flutter/material.dart';

import 'package:flutter_app_1/theme/app_theme.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Cards'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: [
            Card(
              child: Column(
                children: const [
                  ListTile(
                    leading: Icon(
                      Icons.photo_album_outlined,
                      color: AppTheme.primary,
                    ),
                    title: Text('I am the Title'),
                    subtitle: Text(
                        'This card shows the best choice ofeered to you. You got it Officia veniam duis elit duis magna. Occaecat ex consectetur duis eiusmod exercitation id cillum consequat proident laborum qui. Officia et ea voluptate cupidatat tempor qui.'),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
