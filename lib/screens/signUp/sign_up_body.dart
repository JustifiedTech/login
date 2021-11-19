import 'package:flutter/material.dart';
import '/components/ask_button.dart';
import '../signIn/sign_in_screen.dart';
import '/components/background.dart';
import '/config/size_config.dart';
import 'sign_up_form.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

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
                    'Register',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: getProportionateScreenWidth(28),
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: SizeConfig.screenHeight! * 0.04),
                  const SignForm(),
                  const SizedBox(height: 40),
                  AskButton(
                      text: 'Login Here',
                      press: () => Navigator.of(context)
                          .pushNamed(SignInScreen.routeName)),
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
