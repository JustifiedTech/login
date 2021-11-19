import 'package:flutter/material.dart';
import '/components/form_error.dart';
import '/components/button.dart';
import '/config/size_config.dart';
import '/config/constants.dart';

class SignForm extends StatefulWidget {
  const SignForm({
    Key? key,
  }) : super(key: key);

  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();

  void submit() {
    final _formState = _formKey.currentState;
    if (_formState!.validate()) {
      _formState.save();
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
            content: Text(
          'Processing Data',
          style: TextStyle(color: Colors.white),
        )),
      );
    }
  }

  final List<String> emailErrors = [];
  final List<String> passwordErrors = [];
  final List<String> confirmPaswordErrors = [];

  String? email, password, confirmPassword;
  bool remember = false;
  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: [
            emailFormField(),
            SizedBox(height: getProportionateScreenHeight(5)),
            FormError(
              errors: emailErrors,
            ),
            SizedBox(height: getProportionateScreenHeight(20)),
            passwordFormField(),
            SizedBox(height: getProportionateScreenHeight(5)),
            FormError(
              errors: passwordErrors,
            ),
            SizedBox(height: getProportionateScreenHeight(20)),
            confirmPasswordFormField(),
            SizedBox(height: getProportionateScreenHeight(5)),
            FormError(
              errors: confirmPaswordErrors,
            ),
            SizedBox(height: getProportionateScreenHeight(20)),
            Button(
              press: submit,
              text: 'LOGIN',
            ),
            SizedBox(height: getProportionateScreenHeight(20)),
          ],
        ));
  }

  TextFormField passwordFormField() {
    return TextFormField(
        validator: (val) {
          if (val == null ||
              val.isEmpty && !passwordErrors.contains(kPassNullError)) {
            setState(() {
              passwordErrors.add(kPassNullError);
            });
          } else if (val.length < 8 &&
              !passwordErrors.contains(kShortPassError)) {
            setState(() {
              passwordErrors.add(kShortPassError);
            });
          }
          return null;
        },
        onChanged: (val) {
          if (val.isNotEmpty && passwordErrors.contains(kPassNullError)) {
            setState(() {
              passwordErrors.remove(kPassNullError);
            });
          } else if (val.length >= 8 &&
              passwordErrors.contains(kShortPassError)) {
            setState(() {
              passwordErrors.remove(kShortPassError);
            });
          }
          return;
        },
        onSaved: (newValue) => password = newValue,
        keyboardType: TextInputType.text,
        decoration: const InputDecoration(
          hintText: 'Enter your Password',
        ));
  }

  TextFormField confirmPasswordFormField() {
    return TextFormField(
        validator: (val) {
          if (val == null ||
              val.isEmpty ||
              val != password &&
                  !confirmPaswordErrors.contains(kMatchPassError)) {
            setState(() {
              confirmPaswordErrors.add(kMatchPassError);
            });
          }
          return null;
        },
        onChanged: (val) {
          if (val.isNotEmpty &&
              confirmPaswordErrors.contains(kMatchPassError)) {
            setState(() {
              passwordErrors.remove(kMatchPassError);
            });
          }
          return;
        },
        onSaved: (newValue) => password = newValue,
        keyboardType: TextInputType.text,
        decoration: const InputDecoration(
          hintText: 'Confirm your Password',
        ));
  }

  TextFormField emailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
        hintText: 'Enter your Email',
      ),
      validator: (val) {
        if (val == null ||
            val.isEmpty && !emailErrors.contains(kEmailNullError)) {
          setState(() {
            emailErrors.add(kEmailNullError);
          });
        } else if (!emailValidatorRegExp.hasMatch(val) &&
            !emailErrors.contains(kInvalidEmailError)) {
          setState(() {
            emailErrors.add(kInvalidEmailError);
          });
        }
        return null;
      },
      onChanged: (val) {
        if (val.isNotEmpty && emailErrors.contains(kEmailNullError)) {
          setState(() {
            emailErrors.remove(kEmailNullError);
          });
        } else if (emailValidatorRegExp.hasMatch(val) &&
            emailErrors.contains(kInvalidEmailError)) {
          setState(() {
            emailErrors.remove(kInvalidEmailError);
          });
        }
        return;
      },
      onSaved: (newValue) => email = newValue,
    );
  }
}
