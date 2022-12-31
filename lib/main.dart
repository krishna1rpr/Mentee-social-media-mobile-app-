import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:minor_p/screeens/register.dart';
//import 'package:minor_p/screeens/home.dart';
// import 'package:minor_p/screeens/registration.dart';
//import 'screeens/login.dart';
import 'screeens/home_page.dart';

import 'package:minor_p/utils/theme.dart';
// import 'screeens/profile_page.dart';

// void main() {
//   runApp(const MyApp());
// }

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      theme: ThemeData(
        primaryColor: AppTheme.primary,
        backgroundColor: AppTheme.primary,
        fontFamily: 'Gilroy',
      ),
      // theme: ThemeData(
      //   // This is the theme of your application.
      //   //
      //   // Try running your application with "flutter run". You'll see the
      //   // application has a blue toolbar. Then, without quitting the app, try
      //   // changing the primarySwatch below to Colors.green and then invoke
      //   // "hot reload" (press "r" in the console where you ran "flutter run",
      //   // or simply save your changes to "hot reload" in a Flutter IDE).
      //   // Notice that the counter didn't reset back to zero; the application
      //   // is not restarted.
      //   primarySwatch: Colors.blue,
      // ),
      // home: const LoginScreen(),
      home: const HomePage(),
      // home: RegistrationPage(),
      // home: const LoginPage(),
      // home: const ProfilePage(),
    );
  }
}
