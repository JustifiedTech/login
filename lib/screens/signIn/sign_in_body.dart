import 'package:flutter/material.dart';
import '/components/background.dart';
import '../signUp/sign_up_screen.dart';
import '/config/size_config.dart';
import './sign_in_form.dart';
import '/components/ask_button.dart';

class SignInBody extends StatelessWidget {
  const SignInBody({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Background(
      child: Center(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20)),
            child: SingleChildScrollView(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: SizeConfig.screenHeight! * 0.04),
                  Text(
                    'Log In',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: getProportionateScreenWidth(28),
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: SizeConfig.screenHeight! * 0.04),
                  const SignForm(),
                  const SizedBox(height: 40),
                  AskButton(
                      text: 'Register Here',
                      press: () => Navigator.of(context)
                          .pushNamed(SignUpScreen.routeName)),
                  SizedBox(height: SizeConfig.screenHeight! * 0.01),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
