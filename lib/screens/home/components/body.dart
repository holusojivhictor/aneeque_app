import 'package:aneeque_app/screens/home/components/categories.dart';
import 'package:aneeque_app/screens/home/components/discount_banner.dart';
import 'package:aneeque_app/screens/home/components/home_header.dart';
import 'package:aneeque_app/screens/home/components/popular_products.dart';
import 'package:aneeque_app/screens/home/components/recently_viewed.dart';
import 'package:aneeque_app/screens/home/components/special_offer.dart';
import 'package:aneeque_app/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionedScreenWidth(20)),
            const HomeHeader(),
            SizedBox(height: getProportionedScreenWidth(20)),
            const DiscountBanner(),
            SizedBox(height: getProportionedScreenWidth(20)),
            const Categories(),
            SizedBox(height: getProportionedScreenWidth(30)),
            const SpecialOffers(),
            SizedBox(height: getProportionedScreenWidth(30)),
            const PopularProducts(),
            SizedBox(height: getProportionedScreenWidth(30)),
            const RecentlyViewed(),
            SizedBox(height: getProportionedScreenWidth(30)),
          ],
        ),
      ),
    );
  }
}