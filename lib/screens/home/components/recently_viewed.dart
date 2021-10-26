import 'package:aneeque_app/components/product_card.dart';
import 'package:aneeque_app/components/section_title.dart';
import 'package:aneeque_app/models/products.dart';
import 'package:aneeque_app/screens/details/details_screen.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';

class RecentlyViewed extends StatelessWidget {
  const RecentlyViewed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: "Recently viewed",
          press: () {},
        ),
        SizedBox(height: getProportionedScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                recentlyViewed.length,
                    (index) => ProductCard(
                  product: recentlyViewed[index],
                  press: () {
                    Navigator.pushNamed(context, DetailsScreen.routeName,
                        arguments: ProductDetailsArguments(product: recentlyViewed[index]));
                  },
                ),
              ),
              SizedBox(width: getProportionedScreenWidth(20)),
            ],
          ),
        ),
        SizedBox(width: getProportionedScreenWidth(20)),
      ],
    );
  }
}