import 'package:category_web_app/constants.dart';
import 'package:category_web_app/widgets/dropdownbutton.dart';
import 'package:category_web_app/widgets/textIconButton.dart';
import 'package:category_web_app/widgets/textButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Header extends StatefulWidget {
  final Size size;
  const Header({required this.size, super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  List listItem = ['item1', 'item2', 'item3', 'item4', 'item5'];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: headerColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // for network image --  https://www.xnview.com/img/app-xnsoft-360.png
          Image.asset('Logo.png'),
          const SizedBox(
            width: 10,
          ),
          SizedBox(
            width: 467,
            height: 35,
            child: Expanded(
              child: TextFormField(
                maxLength: 30,
                maxLengthEnforcement: MaxLengthEnforcement.enforced,
                decoration: InputDecoration(
                    fillColor: searchBarColor,
                    filled: true,
                    hintText: 'search',
                    hintTextDirection: TextDirection.ltr,
                    hintStyle: const TextStyle(
                      fontSize: 16,
                    ),
                    counterText: '',
                    focusedBorder: searchbarBorder,
                    enabledBorder: searchbarBorder,
                    isDense: true),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          FilledButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(searchBarColor)),
            onPressed: null,
            child: const Text(
              'Login',
              style: TextStyle(fontSize: 17, color: headerColor),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          MyTextButton(text: 'Become a seller', onPressed: () {}),
          const SizedBox(
            width: 20,
          ),

          DropDown(listItem: listItem, hintLabel: 'More'),
          const SizedBox(
            width: 15,
          ),
          TextIconButton(
              icon: const Icon(Icons.shopping_cart_outlined),
              onpressed: () {},
              label: 'Cart'),
          const SizedBox(
            width: 50,
          ),
        ],
      ),
    );
  }
}
