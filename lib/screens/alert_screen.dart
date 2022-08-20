import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void showAlertDialogIOS(BuildContext context) {
    showCupertinoDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: const Text('Watta window'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text(
                    'Otta Flutter, develop factor, app creator step by chapter. Good vibes in your dialog window! '),
                SizedBox(height: 10),
                FlutterLogo(size: 100)
              ],
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text(
                    'Cancel',
                    style: TextStyle(color: Colors.lightBlue),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text(
                    'Ok',
                  ),
                ),
              )
            ],
          );
        });
  }

  void showAlertDialogAndroid(BuildContext context) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(
            elevation: 5,
            title: const Text('Watta window'),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(10)),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text(
                    'Otta Flutter, develop factor, app creator step by chapter. Good vibes in your dialog window! '),
                SizedBox(height: 10),
                FlutterLogo(size: 100)
              ],
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text(
                    'Cancel',
                    style: TextStyle(color: Colors.lightBlue),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text('Ok')),
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            /* style: ElevatedButton.styleFrom(
              primary: Colors.pink, shape: const StadiumBorder(), elevation: 0),*/
            // onPressed: () => showAlertDialogAndroid(context),
            onPressed: () => Platform.isAndroid
                ? showAlertDialogAndroid(context)
                : showAlertDialogIOS(context),

            /* style: ElevatedButton.styleFrom(
              primary: Colors.pink, shape: const StadiumBorder(), elevation: 0),*/
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Text('Show me the alert', style: TextStyle(fontSize: 16)),
            )),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}
