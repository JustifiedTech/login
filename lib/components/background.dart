import 'package:flutter/material.dart';
import '/config/size_config.dart';

class Background extends StatelessWidget {
  const Background({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.screenHeight,
      width: double.infinity,
      child: Stack(
        children: [
          Positioned(
            top: -15,
            left: -20,
            child: Image.asset(
              "assets/images/topDown.png",
              width: getPercentageScreenWidth(70),
            ),
          ),
          Positioned(
            top: -15,
            left: -40,
            child: Image.asset(
              "assets/images/topUp.png",
                width: getPercentageScreenWidth(60),
            ),
          ),
          Positioned(
            bottom: -50,
            left: -70,
            child: Image.asset(
              "assets/images/bottomLeft.png",
              width: getPercentageScreenWidth(80),
            ),
          ),
          Positioned(
            bottom: -130,
            right: -10,
            child: Image.asset(
              "assets/images/bottomRight.png",
             width: getPercentageScreenWidth(80),
              // height: 201,
            ),
          ),
          child,
        ],
      ),
    );
  }
}
