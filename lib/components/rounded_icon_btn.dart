import 'package:flutter/material.dart';

import '../size_config.dart';

class RoundedIconBtn extends StatelessWidget {
  final IconData icon;
  final GestureTapCallback press;

  const RoundedIconBtn({Key? key, required this.press, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(getProportionedScreenWidth(5)),
      child: SizedBox(
        height: getProportionedScreenWidth(35),
        width: getProportionedScreenWidth(35),
        child: TextButton(
          style: ButtonStyle(
            padding: MaterialStateProperty.all(EdgeInsets.zero),
            backgroundColor: MaterialStateProperty.all(Colors.white),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            )),
          ),
          onPressed: press,
          child: Icon(icon, color: Colors.black, size: getProportionedScreenWidth(16)),
        ),
      ),
    );
  }
}