import 'package:flutter/widgets.dart';
import '../screens/signIn/sign_in_screen.dart';
import '../screens/signup/sign_up_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SignInScreen.routeName: (context) => const SignInScreen(),
  SignUpScreen.routeName: (context) => const SignUpScreen(),
};
