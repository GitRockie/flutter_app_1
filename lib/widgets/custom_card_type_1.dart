import 'package:flutter/material.dart';
import 'package:flutter_app_1/theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(
              Icons.photo_album_outlined,
              color: AppTheme.primary,
            ),
            title: Text('I am the Title'),
            subtitle: Text(
                'This card shows the best choice ofeered to you. You got it Officia veniam duis elit duis magna. Occaecat ex consectetur duis eiusmod exercitation id cillum consequat proident laborum qui. Officia et ea voluptate cupidatat tempor qui.'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('Cancel'),
                ),
                TextButton(onPressed: () {}, child: const Text('Ok'))
              ],
            ),
          )
        ],
      ),
    );
  }
}
