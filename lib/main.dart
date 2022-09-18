import 'package:flutter/material.dart';
import 'login_page.dart';
import 'signup_page.dart';
import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/login_page',

      routes: {
        '/login_page': (context) => LoginPage(),
        '/signup_page': (context) => SignupPage(),
        '/home':(context) => HomePage(),
      },
      // home: LoginPage(),
    );
  }
}
