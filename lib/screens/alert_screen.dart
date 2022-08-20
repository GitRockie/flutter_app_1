import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void showAlertDialog(BuildContext context) {
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
                    'We use cookies to provide our services and for analytics and marketing. To find out more about our use of cookies'),
                SizedBox(height: 10),
                FlutterLogo(size: 100)
              ],
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text('Cancel')),
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
            onPressed: () => showAlertDialog(context),
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
