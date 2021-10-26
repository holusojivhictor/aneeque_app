import 'package:aneeque_app/components/alt_product_card.dart';
import 'package:aneeque_app/components/section_title.dart';
import 'package:aneeque_app/models/products.dart';
import 'package:aneeque_app/screens/details/details_screen.dart';
import 'package:aneeque_app/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  final Specials special;
  const Body({Key? key, required this.special}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      child: Column(
        children: [
          Column(
            children: [
              ...List.generate(
                special.allSpecials.length,
                    (index) => Column(
                  children: [
                    SizedBox(height: getProportionedScreenWidth(20)),
                    SectionTitle(
                      text: special.allSpecials[index].sectionTitle,
                      press: () {},
                    ),
                    SizedBox(height: getProportionedScreenWidth(20)),
                    ...List.generate(
                      special.allSpecials[index].allCategoriesProducts.length,
                          (next) => AltProductCard(
                        product: special.allSpecials[index].allCategoriesProducts[next],
                        press: () {
                          Navigator.pushNamed(context, DetailsScreen.routeName,
                            arguments: ProductDetailsArguments(
                                product: special.allSpecials[index].allCategoriesProducts[next]),
                          );
                        },
                        pressMenu: () {},
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
