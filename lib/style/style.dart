import 'package:category_web_app/constants.dart';
import 'package:flutter/material.dart';

TextStyle headerTextStyle =
    const TextStyle(fontSize: 17, color: searchBarColor);
ButtonStyle iconButtonStyle = ButtonStyle(
    iconColor: MaterialStateProperty.all(searchBarColor),
    iconSize: MaterialStateProperty.all(20));
