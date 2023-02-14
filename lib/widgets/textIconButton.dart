import 'package:category_web_app/style/style.dart';
import 'package:flutter/material.dart';

class TextIconButton extends StatelessWidget {
  final Icon icon;
  Function() onpressed;
  String label;
  TextIconButton(
      {super.key,
      required this.icon,
      required this.onpressed,
      required this.label});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
        onPressed: onpressed(),
        icon: icon,
        style: iconButtonStyle,
        label: Text(
          label,
          style: headerTextStyle,
        ));
  }
}
