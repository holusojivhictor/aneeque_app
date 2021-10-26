import 'package:aneeque_app/models/products.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class ProductDescription extends StatefulWidget {
  const ProductDescription({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  _ProductDescriptionState createState() => _ProductDescriptionState();
}

class _ProductDescriptionState extends State<ProductDescription> {
  bool pressed = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionedScreenWidth(20),
          ),
          child: Text(widget.product.title, style: Theme.of(context).textTheme.headline6),
        ),
        const SizedBox(height: 5),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            padding: EdgeInsets.all(getProportionedScreenWidth(10)),
            width: getProportionedScreenWidth(50),
            decoration: BoxDecoration(
                color: widget.product.isFavourite
                    ? const Color(0xFFFFE6E6)
                    : const Color(0xFFF5F6F9),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                )
            ),
            child: Icon(Icons.favorite,
              size: getProportionedScreenWidth(18),
              color: widget.product.isFavourite
                  ? const Color(0xFFFF4848)
                  : const Color(0xFFD8DEE4),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: getProportionedScreenWidth(20),
            right: getProportionedScreenWidth(60),
          ),
          child: Text(
            pressed ? widget.product.fullDescription : widget.product.description,
            style: TextStyle(fontSize: getProportionedScreenWidth(16)),
          ),
        ),
        if (pressed == false)
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: getProportionedScreenWidth(20),
              vertical: 10,
            ),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  pressed = true;
                });
              },
              child: Row(
                children: const [
                  Text("See More Detail",
                    style: TextStyle(
                        color: Constants.kPrimaryColor,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(width: 5),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 12,
                    color: Constants.kPrimaryColor,
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }
}