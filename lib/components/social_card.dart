import 'package:flutter/material.dart';

import '../size_config.dart';

class SocialCard extends StatefulWidget {
  final String icon;
  final Function()? press;
  const SocialCard({Key? key, required this.icon, required this.press}) : super(key: key);

  @override
  State<SocialCard> createState() => _SocialCardState();
}

class _SocialCardState extends State<SocialCard> {
  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: widget.press,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: getProportionedScreenWidth(5)),
        padding: EdgeInsets.only(
          top: getProportionedScreenWidth(8),
          bottom: getProportionedScreenWidth(6),
        ),
        height: getProportionedScreenHeight(35),
        width: getProportionedScreenWidth(40),
        decoration: const BoxDecoration(
          color: Color(0xFFF5F6F9),
          shape: BoxShape.circle,
        ),
        child: Image.asset(widget.icon),
      ),
    );
  }
}