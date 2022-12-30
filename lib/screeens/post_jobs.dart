import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class RegisterationPage extends StatefulWidget {
  const RegisterationPage({super.key});

  @override
  State<RegisterationPage> createState() => _RegisterationPageState();
}

class _RegisterationPageState extends State<RegisterationPage> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _name = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _dob = TextEditingController();

  bool val = false;

  //var item;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: _name,
                validator: (value) => value == "" ? "Please Fill Value" : null,
              ),
              TextFormField(
                controller: _email,
                validator: (value) => value == "" ? "Please Fill Value" : null,
              ),
              TextFormField(
                controller: _dob,
                validator: (value) => value == "" ? "Please Fill Value" : null,
              ),
              TextButton(
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    final response = await http.post(
                      Uri.parse('http://localhost:3000/flutterApp'),
                      body: jsonEncode(<String, String>{
                        "name": _name.text,
                        "email": _email.text,
                        "dob": _dob.text
                      }),
                    );

                    // print(_name.text);
                    // print(_email.text);
                    // print(_dob.text);

                    //final x = jsonDecode(response.body);
                    //print(x);
                  }
                },
                child: const Text("Submit"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
