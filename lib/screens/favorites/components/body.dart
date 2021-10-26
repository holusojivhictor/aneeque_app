import 'package:aneeque_app/models/products.dart';
import 'package:aneeque_app/screens/details/details_screen.dart';
import 'package:flutter/material.dart';

import 'favorite_card.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {

    return GridView.count(
      crossAxisCount: 3,
      childAspectRatio: 0.66,
      children: List.generate(favProducts.length, (index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: FavoriteCard(
            product: favProducts[index],
            press: () {
              Navigator.pushNamed(context, DetailsScreen.routeName,
                arguments: ProductDetailsArguments(product: favProducts[index]),
              );
            },
          ),
        );
      }),
    );
  }
}