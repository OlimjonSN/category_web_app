import 'package:flutter/material.dart';

import '../constants.dart';
import '../style/style.dart';

class DropDown extends StatefulWidget {
  List listItem = [1, 1];
  String hintLabel;

  DropDown({super.key, required this.listItem, required this.hintLabel});
  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  String? choosevalue;
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
        underline: const Divider(color: headerColor),
        icon: const Icon(
          Icons.keyboard_arrow_down_rounded,
          size: 15,
          color: searchBarColor,
        ),
        hint: Text(
          widget.hintLabel,
          style: headerTextStyle,
        ),
        value: choosevalue,
        items: widget.listItem
            .map((valueItem) =>
                DropdownMenuItem(value: valueItem, child: Text(valueItem)))
            .toList(),
        onChanged: (newValue) {
          setState(() {
            choosevalue = newValue.toString();
          });
        });
  }
}
