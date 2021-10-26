import 'package:aneeque_app/components/section_title.dart';
import 'package:aneeque_app/models/products.dart';
import 'package:aneeque_app/screens/home/components/special_offer_card.dart';
import 'package:aneeque_app/screens/specials/specials_screen.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: "Special for you",
          press: () {},
        ),
        SizedBox(height: getProportionedScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SpecialOfferCard(
                image: "assets/images/open-laptop.jpg",
                category: "Smartphones",
                numOfBrands: 4,
                press: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return SpecialsScreen(
                          appBarText: "Smartphones",
                          specialsIndex: allCategories[0],
                        );
                      },
                    ),
                  );
                },
              ),
              SpecialOfferCard(
                image: "assets/images/a-piece-of-garment.jpg",
                category: "Fashion",
                numOfBrands: 10,
                press: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return SpecialsScreen(
                          appBarText: "Fashion",
                          specialsIndex: allCategories[1],
                        );
                      },
                    ),
                  );
                },
              ),
              SizedBox(width: getProportionedScreenWidth(20)),
            ],
          ),
        ),
      ],
    );
  }
}
