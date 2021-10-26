import 'package:aneeque_app/components/product_card.dart';
import 'package:aneeque_app/components/section_title.dart';
import 'package:aneeque_app/models/products.dart';
import 'package:aneeque_app/screens/details/details_screen.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: "Popular Products",
          press: () {},
        ),
        SizedBox(height: getProportionedScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demoProducts.length,
                    (index) => ProductCard(
                  product: demoProducts[index],
                  press: () {
                    Navigator.pushNamed(context, DetailsScreen.routeName,
                      arguments: ProductDetailsArguments(product: demoProducts[index]),
                    );
                  },
                ),
              ),
              SizedBox(width: getProportionedScreenWidth(20)),
            ],
          ),
        ),
      ],
    );
  }
}
