import 'package:flutter/material.dart';

import '../size_config.dart';

class CustomSuffix extends StatelessWidget {
  final IconData icon;
  const CustomSuffix({Key? key, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0,
          getProportionedScreenWidth(15),
          getProportionedScreenWidth(15),
          getProportionedScreenWidth(15)),
      child: Icon(icon, size: getProportionedScreenHeight(20)),
    );
  }
}