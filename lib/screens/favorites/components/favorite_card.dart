import 'package:aneeque_app/models/products.dart';
import 'package:aneeque_app/size_config.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';


class FavoriteCard extends StatelessWidget {
  final double width, aspectRatio;
  final Product product;
  final GestureTapCallback press;

  const FavoriteCard({
    Key? key,
    required this.press,
    required this.product,
    this.width = 120,
    this.aspectRatio = 1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: getProportionedScreenWidth(10), horizontal: getProportionedScreenWidth(5)),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          width: getProportionedScreenWidth(width),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
              const SizedBox(height: 5),
              Text(product.title,
                style: TextStyle(color: Colors.black, fontSize: getProportionedScreenWidth(15)),
                maxLines: 2,
              ),
              const SizedBox(height: 1),
              Text("\$${product.price}",
                style: TextStyle(
                  fontSize: getProportionedScreenWidth(13),
                  fontWeight: FontWeight.w600,
                  color: Constants.kPrimaryColor,
                ),
              ),
              const SizedBox(height: 1),
              Text("${product.quantitySold} sold",
                style: TextStyle(
                  fontSize: getProportionedScreenWidth(10),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}