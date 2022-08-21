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
              icon: Icons.perm_identity_outlined,
              suffixIcon: Icons.assignment_outlined,
            ),
            SizedBox(
              height: 30,
            ),
            CustomInputField(
              labelText: 'Surname',
              hintText: 'Put your surname',
              icon: Icons.group_outlined,
              suffixIcon: Icons.history_edu,
            ),
            SizedBox(
              height: 30,
            ),
            CustomInputField(
              labelText: 'e-mail',
              hintText: 'Put your e-mail',
              icon: Icons.contact_mail,
              suffixIcon: Icons.alternate_email,
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(
              height: 30,
            ),
            CustomInputField(
              labelText: 'password',
              hintText: 'Create your password',
              icon: Icons.password_outlined,
              suffixIcon: Icons.visibility_off,
              obscureText: true,
              //keyboardType: TextInputType.visiblePassword,
            ),
          ]),
        ),
      ),
    );
  }
}
