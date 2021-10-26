import 'package:aneeque_app/models/products.dart';
import 'package:aneeque_app/screens/details/components/alt_button.dart';
import 'package:aneeque_app/screens/details/components/product_description.dart';
import 'package:aneeque_app/screens/details/components/product_image.dart';
import 'package:aneeque_app/screens/details/components/related_items.dart';
import 'package:aneeque_app/screens/details/components/top_rounded_corner.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';

class Body extends StatelessWidget {
  final Product product;
  const Body({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProductImages(product: product),
          TopRoundedContainer(
            color: Colors.white,
            child: Column(
              children: [
                ProductDescription(
                  product: product,
                ),
                Column(
                  children: [
                    TopRoundedContainer(
                      color: Colors.white,
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: getProportionedScreenWidth(20)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Text("\$${product.price}",
                                    style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                AltButton(
                                  text: "Add to Cart",
                                  press: () {},
                                ),
                              ],
                            ),
                          ),
                          const TopRoundedContainer(
                            color: Colors.white,
                            child: RelatedItems(),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}