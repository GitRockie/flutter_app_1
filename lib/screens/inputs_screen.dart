import 'package:flutter/material.dart';

import '../widgets/custom_input_field.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs and Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(children: const [
            CustomInputField(
              labelText: 'Name',
              hintText: 'Username',
            )
          ]),
        ),
      ),
    );
  }
}
