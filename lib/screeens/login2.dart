import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Container(
          // margin: EdgeInsets.fromLTRB(width / 10, height, width / 10, 0),
          margin: EdgeInsets.symmetric(
            horizontal: width / 10,
            vertical: height / 6,
          ),
          // alignment: Alignment.topCenter,
          child: Form(
            child: Column(mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: height / 60),
                    child: const CircleAvatar(
                      radius: 80,
                      child: Icon(
                        Icons.person,
                        size: 80,
                      ),
                    ),
                  ),
                  LoginField(
                    text: "Emaildsad",
                    height: height,
                    obscureText: false,
                  ),
                  LoginField(
                    text: "Passasaword",
                    height: height,
                    obscureText: true,
                  ),
                  InkWell(
                    onTap: () {
                      //print("Clicked!!!!!");
                    },
                    child: Container(
                      // color: Colors.blue,
                      margin: EdgeInsets.symmetric(vertical: height / 90),
                      padding: const EdgeInsets.all(8),
                      decoration: const BoxDecoration(
                          border: Border(
                        top: BorderSide(color: Colors.black),
                        bottom: BorderSide(color: Colors.black),
                      )
                          // border: Border.all(color: Colors.black38),
                          // borderRadius: BorderRadius.circular(10),
                          ),
                      child: const Text(
                        "Not Registered?",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.black87),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black)),
                      child: const Text(
                        "Login",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 19),
                      ),
                    ),
                  )
                ]),
          ),
        ),
      ),
    );
  }
}

class LoginField extends StatelessWidget {
  const LoginField({
    Key? key,
    required this.text,
    required this.height,
    required this.obscureText,
  }) : super(key: key);

  final String text;
  final num height;
  final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: height / 100),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: text,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide()),
        ),
        obscureText: obscureText,
      ),
    );
  }
}
