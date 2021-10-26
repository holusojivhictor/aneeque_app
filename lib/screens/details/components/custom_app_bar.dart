import 'package:aneeque_app/components/rounded_icon_btn.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';

class CustomAppBar extends PreferredSize {
  CustomAppBar({Key? key, required this.rating}) : super(key: key,
    preferredSize: Size.fromHeight(AppBar().preferredSize.height),
    child: Row(),
  );

  final double rating;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: getProportionedScreenWidth(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RoundedIconBtn(
              press: () => Navigator.pop(context),
              icon: Icons.arrow_back_ios,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              decoration: BoxDecoration(
                color: const Color(0xFFF6F7F9),
                borderRadius: BorderRadius.circular(14),
              ),
              child: Row(
                children: [
                  Text(rating.toString(), style: const TextStyle(
                    fontWeight: FontWeight.w600,
                  )),
                  const SizedBox(width: 5),
                  Icon(Icons.star, color: Colors.yellow, size: getProportionedScreenWidth(16)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}