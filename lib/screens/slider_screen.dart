import 'package:flutter/material.dart';
import 'package:flutter_app_1/theme/app_theme.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slide and Check'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Slider.adaptive(
                min: 50,
                max: 400,
                activeColor: AppTheme.primary,
                //divisions: 10,
                value: _sliderValue,
                onChanged: (value) {
                  _sliderValue = value;
                  setState(() {});
                }),
            Image(
              image: const NetworkImage(
                  'http://clipart-library.com/images_k/spiderman-png-transparent/spiderman-png-transparent-8.png'),
              fit: BoxFit.contain,
              width: _sliderValue,
            ),
            const SizedBox(
              height: 100,
            )
          ],
        ),
      ),
    );
  }
}
