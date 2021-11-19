import 'package:flutter/material.dart';
import '../config/size_config.dart';

class AskButton extends StatelessWidget {
  const AskButton({Key? key, @required this.press, @required this.text})
      : super(key: key);
  final String? text;
  final Function()? press;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
            onPressed: press,
            child: Text(
              text ?? '',
              style: TextStyle(
                  fontSize: getProportionateScreenWidth(20),
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            )),
      ],
    );
  }
}
