import 'package:aneeque_app/screens/cart/cart_screen.dart';
import 'package:aneeque_app/screens/favorites/components/body.dart';
import 'package:aneeque_app/screens/specials/components/icon_btn_wthout_count.dart';
import 'package:flutter/material.dart';

class Favorites extends StatelessWidget {
  static String routeName = "/favorites_screen";
  const Favorites({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: const Body(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: const Text(
        "Favorites",
        style: TextStyle(color: Colors.black),
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