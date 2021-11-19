import 'package:flutter/material.dart';
import '../config/constants.dart';
import '../config/size_config.dart';

class Button extends StatelessWidget {
  const Button({Key? key, required this.press, required this.text})
      : super(key: key);
  final String? text;
  final Function()? press;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(56),
      child: TextButton(
        style: TextButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            backgroundColor: kPrimaryColor),
        onPressed: press,
        child: Text(
          text ?? '',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: kPrimaryLightColor,
              fontSize: getProportionateScreenWidth(18)),
        ),
      ),
    );
  }
}
