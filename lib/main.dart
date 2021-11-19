// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import './config/theme.dart';
import './config/routes.dart';
import 'screens/signin/sign_in_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp(Key? key) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: themeData(),
      debugShowCheckedModeBanner: false,
      title: 'Login Task',
      initialRoute: SignInScreen.routeName,
      routes: routes,
    );
  }
}
