import 'package:aneeque_app/size_config.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class OnboardingContent extends StatelessWidget {
  final String? text, image, title;
  const OnboardingContent({Key? key, required this.image, required this.text, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Image.asset(
          image!,
          height: getProportionedScreenHeight(350),
          width: getProportionedScreenWidth(500),
        ),
        const Spacer(flex: 2),
        Padding(
          padding: const EdgeInsets.all(Constants.kPadding),
          child: Text(title!,style: TextStyle(
            fontSize: getProportionedScreenWidth(20),
            fontWeight: FontWeight.bold,
          ),
              textAlign: TextAlign.center),
        ),
        Padding(
          padding: const EdgeInsets.all(Constants.kPadding / 2),
          child: Text(text!,style: TextStyle(
            fontSize: getProportionedScreenWidth(15),
            color: Colors.black54,
          ), textAlign: TextAlign.center),
        ),
      ],
    );
  }
}