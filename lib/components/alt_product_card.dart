import 'package:aneeque_app/models/products.dart';
import 'package:aneeque_app/size_config.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class AltProductCard extends StatelessWidget {
  final double height, aspectRatio;
  final Product product;
  final GestureTapCallback press;
  final GestureTapCallback pressMenu;

  const AltProductCard({
    Key? key,
    this.height = 110,
    this.aspectRatio = 1,
    required this.product,
    required this.press,
    required this.pressMenu,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: getProportionedScreenWidth(14),
        bottom: getProportionedScreenWidth(10),
      ),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          height: getProportionedScreenHeight(height),
          child: Row(
            children: [
              AspectRatio(
                aspectRatio: aspectRatio,
                child: Container(
                  padding: EdgeInsets.all(getProportionedScreenWidth(20)),
                  decoration: BoxDecoration(
                    color: Constants.kSecondaryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Image.asset(product.images[0]),
                ),
              ),
              const SizedBox(width: 10),
              SizedBox(
                width: 220,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(product.title,
                      style: TextStyle(color: Colors.black, fontSize: getProportionedScreenWidth(13)),
                      maxLines: 2,
                    ),
                    const SizedBox(height: 3),
                    Row(
                      children: [
                        Text(product.condition,
                          style: TextStyle(color: Colors.black, fontSize: getProportionedScreenWidth(10)),
                        ),
                        const SizedBox(width: 3),
                        const Icon(Icons.circle, color: Colors.grey, size: 5),
                        const SizedBox(width: 3),
                        Text(product.manufacturer,
                          style: TextStyle(color: Colors.black, fontSize: getProportionedScreenWidth(10)),
                        ),
                      ],
                    ),
                    const SizedBox(height: 2),
                    Row(
                      children: [
                        Text("${product.rating}",
                          style: TextStyle(color: Colors.black, fontSize: getProportionedScreenWidth(10)),
                        ),
                        const SizedBox(width: 3),
                        const Icon(Icons.favorite, size: 10),
                      ],
                    ),
                    const SizedBox(height: 2),
                    Text("\$${product.price}",
                      style: TextStyle(
                        fontSize: getProportionedScreenWidth(14),
                        fontWeight: FontWeight.w600,
                        color: Constants.kPrimaryColor,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text("${product.quantitySold} sold",
                      style: TextStyle(
                        fontSize: getProportionedScreenWidth(10),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}