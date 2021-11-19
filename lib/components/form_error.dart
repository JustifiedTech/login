import 'package:flutter/material.dart';
import '../config/size_config.dart';

class FormError extends StatelessWidget {
  const FormError({
    Key? key,
    required this.errors,

  }) : super(key: key);

  final List<String>? errors;

  @override
  Widget build(BuildContext context) {
    return Column(
        children: List.generate(
            errors!.length, (index) => errorText(error: errors?[index])));
  }

  Row errorText({String? error}) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.cancel,
          color: Colors.red,
        ),
        SizedBox(
          width: getProportionateScreenWidth(5),
        ),
        Text(error ?? '',
            style: const TextStyle(color: Colors.red, fontWeight: FontWeight.w400)),
      ],
    );
  }
}
