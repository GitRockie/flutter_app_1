import 'package:flutter/material.dart';

import '../widgets/custom_input_field.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Simon',
      'last_name': 'Baker',
      'email': 'simon@menta.list',
      'password': '123456',
      'role': 'Consult'
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs and Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Form(
            key: myFormKey,
            child: Column(children: [
              CustomInputField(
                labelText: 'Name',
                hintText: 'Username',
                icon: Icons.perm_identity_outlined,
                suffixIcon: Icons.assignment_outlined,
                formProperty: 'first_name',
                formValues: formValues,
              ),
              const SizedBox(
                height: 30,
              ),
              CustomInputField(
                labelText: 'Surname',
                hintText: 'Put your surname',
                icon: Icons.drive_file_rename_outline,
                suffixIcon: Icons.wysiwyg,
                formProperty: 'last_name',
                formValues: formValues,
              ),
              const SizedBox(
                height: 30,
              ),
              CustomInputField(
                labelText: 'e-mail',
                hintText: 'Put your e-mail',
                icon: Icons.contact_mail,
                suffixIcon: Icons.alternate_email,
                keyboardType: TextInputType.emailAddress,
                formValues: formValues,
                formProperty: 'email',
              ),
              const SizedBox(
                height: 30,
              ),
              CustomInputField(
                labelText: 'password',
                hintText: 'Create your password',
                icon: Icons.password_outlined,
                suffixIcon: Icons.visibility_off,
                obscureText: true, formValues: formValues,
                formProperty: 'password',

                //keyboardType: TextInputType.visiblePassword,
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                child: const SizedBox(
                    width: double.infinity, child: Center(child: Text('Save'))),
                onPressed: () {
                  FocusScope.of(context).requestFocus(FocusNode());

                  if (!myFormKey.currentState!.validate()) {
                    print('Form is not valid');
                    return;
                  }
                  print(formValues);
                },
              )
            ]),
          ),
        ),
      ),
    );
  }
}
