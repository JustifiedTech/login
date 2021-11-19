import 'package:flutter/material.dart';
import 'package:login/config/size_config.dart';
import './components/sign_in_body.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = '/sign_in';
  const SignInScreen({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(
      body: SignInBody(),
    );
  }
}
