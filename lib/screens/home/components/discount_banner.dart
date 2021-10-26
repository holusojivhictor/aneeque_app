import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../size_config.dart';

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: getProportionedScreenWidth(20)),
      padding: EdgeInsets.symmetric(
          horizontal: getProportionedScreenWidth(20),
          vertical: getProportionedScreenWidth(20)),
      width: double.infinity,
      //height: 90,
      decoration: BoxDecoration(
        color: Constants.kPrimaryColor,
        image: const DecorationImage(
          image: AssetImage("assets/images/366233.jpg"),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Text.rich(TextSpan(
        text: "HOT SALE\n",
        style: TextStyle(color: Colors.white),
        children: [
          TextSpan(
            text: "40%",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          TextSpan(
            text: "  OFF\n",
            style: TextStyle(fontSize: 24),
          ),
          TextSpan(
            text: " \n",
          ),
          TextSpan(
            text: " \n",
          ),
          TextSpan(
            text: "Rolex Smartwatch",
            style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
          ),
        ],
      )),
    );
  }
}