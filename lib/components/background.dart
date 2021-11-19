import 'package:flutter/material.dart';
import 'package:login/config/size_config.dart';

class Background extends StatelessWidget {
  const Background({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: -15,
          left: -20,
          child: Image.asset(
            "assets/images/topDown.png",
            width: getPercentageScreenWidth(80),
            // height: 229,
          ),
        ),
        Positioned(
          top: -15,
          left: -40,
          child: Image.asset(
            "assets/images/topUp.png",
            width: 270,
            height: 201,
          ),
        ),
        Positioned(
          bottom: -70,
          right: 150,
          child: Image.asset(
            "assets/images/bottomLeft.png",
            width: getPercentageScreenWidth(80),
            height: 229,
          ),
        ),
        Positioned(
          bottom: -95,
          right: -10,
          child: Image.asset(
            "assets/images/bottomRight.png",
            width: 270,
            // height: 201,
          ),
        ),
        child,
      ],
    );
  }
}
