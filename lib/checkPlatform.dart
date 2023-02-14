import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'responsive/desktopBody.dart';
import 'responsive/mobileBody.dart';

class checkPlatform extends StatelessWidget {
  const checkPlatform({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 600) {
        return const mobileBody();
      } else {
        return const desktopBody();
      }
    });
  }
}
