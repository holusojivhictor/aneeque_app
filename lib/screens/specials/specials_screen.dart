import 'package:aneeque_app/models/products.dart';
import 'package:aneeque_app/screens/cart/cart_screen.dart';
import 'package:flutter/material.dart';
import 'package:aneeque_app/screens/specials/components/body.dart';

import '../../constants.dart';
import 'components/icon_btn_wthout_count.dart';

class SpecialsScreen extends StatelessWidget {
  static String routeName = "/specials_screen";
  final String appBarText;
  final Specials specialsIndex;

  const SpecialsScreen({Key? key, required this.appBarText, required this.specialsIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(special: specialsIndex),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Constants.kSecondaryColor.withOpacity(0.2),
      automaticallyImplyLeading: false,
      title: Text(
        appBarText,
        style: const TextStyle(color: Colors.black),
      ),
      actions: [
        IconBtnWithOutCounter(
          icon: Icons.search,
          press: () {},
        ),
        const SizedBox(width: 10),
        IconBtnWithOutCounter(
          icon: Icons.shopping_cart_outlined,
          press: () => Navigator.pushNamed(context, CartScreen.routeName),
        ),
        const SizedBox(width: 10),
      ],
    );
  }
}