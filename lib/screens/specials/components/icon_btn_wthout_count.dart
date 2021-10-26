import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class IconBtnWithOutCounter extends StatelessWidget {
  const IconBtnWithOutCounter({
    Key? key,
    required this.icon, required this.press,
  }) : super(key: key);

  final IconData icon;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      borderRadius: BorderRadius.circular(50),
      child: Stack(
        clipBehavior: Clip.hardEdge,
        children: [
          Container(
            padding: EdgeInsets.all(getProportionedScreenWidth(10)),
            height: getProportionedScreenWidth(40),
            width: getProportionedScreenWidth(40),
            decoration: BoxDecoration(
              color: Constants.kSecondaryColor.withOpacity(0),
              shape: BoxShape.circle,
            ),
            child: Icon(icon, size: 20),
          ),
        ],
      ),
    );
  }
}