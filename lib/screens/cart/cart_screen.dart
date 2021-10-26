import 'package:aneeque_app/models/cart.dart';
import 'package:aneeque_app/screens/cart/components/body.dart';
import 'package:aneeque_app/screens/cart/components/check_out_card.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  static String routeName = "/cart_screen";
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: const Body(),
      bottomNavigationBar: const CheckOutCard(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          const Text("My Cart",
            style: TextStyle(color: Colors.black),
          ),
          Text("${demoCarts.length} items",
            style: Theme.of(context).textTheme.caption,
          ),
        ],
      ),
      leading: const SizedBox(),
      centerTitle: true,
    );
  }
}