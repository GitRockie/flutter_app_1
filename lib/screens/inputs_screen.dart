import 'package:flutter/material.dart';

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
          child: Column(children: [
            TextFormField(
              autofocus: false,
              initialValue: '',
              textCapitalization: TextCapitalization.words,
              onChanged: (value) {
                print(value);
              },
              validator: (value) {
                if (value == null) return 'This camp is required';
                return value.length < 3 ? '3 characters min. limit' : null;
              },
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: const InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.teal),
                ),
                hintText: 'Username',
                labelText: 'Name',
                helperText: 'Only letters',
                //counterText: '3 characters'
                //prefixIcon: Icon(),
                suffixIcon: Icon(Icons.group_outlined),
                icon: Icon(Icons.assignment_outlined),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                )),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
