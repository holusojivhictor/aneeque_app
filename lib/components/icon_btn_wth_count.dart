import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class IconBtnWithCounter extends StatelessWidget {
  const IconBtnWithCounter({Key? key,
    required this.icon, this.numOfItems = 0, required this.press,
  }) : super(key: key);

  final IconData icon;
  final int numOfItems;
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
            height: getProportionedScreenWidth(45),
            width: getProportionedScreenWidth(45),
            decoration: BoxDecoration(
              color: Constants.kSecondaryColor.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: Icon(icon, size: 20),
          ),
          if (numOfItems != 0)
            Positioned(
              right: 0,
              child: Container(
                height: getProportionedScreenWidth(13),
                width: getProportionedScreenWidth(13),
                decoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                  border: Border.all(width: 1.5, color: Colors.white),
                ),
                child: Center(
                  child: Text("$numOfItems", style: TextStyle(
                      fontSize: getProportionedScreenWidth(10),
                      height: 1,
                      color: Colors.white, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}