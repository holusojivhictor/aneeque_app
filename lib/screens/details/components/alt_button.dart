import 'package:aneeque_app/size_config.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class AltButton extends StatelessWidget {
  final String text;
  final Function()? press;
  const AltButton({Key? key, required this.text, required this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      height: getProportionedScreenHeight(45),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Constants.kPadding / 10),
        child: TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Constants.kPrimaryColor),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            ),
          ),
          onPressed: press,
          child: Text(text, style: TextStyle(
            fontSize: getProportionedScreenWidth(15),
            color: Colors.white,
          )),
        ),
      ),
    );
  }
}