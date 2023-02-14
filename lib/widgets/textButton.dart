import 'package:category_web_app/style/style.dart';
import 'package:flutter/material.dart';

class MyTextButton extends StatelessWidget {
  Function() onPressed;
  String text;
  MyTextButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed(),
      child: Text(
        text,
        style: headerTextStyle,
      ),
    );
  }
}
