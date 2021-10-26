import 'package:aneeque_app/components/rounded_icon_btn.dart';
import 'package:aneeque_app/models/products.dart';
import 'package:aneeque_app/screens/details/components/top_rounded_corner.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import 'color_dots.dart';

class ProductImages extends StatefulWidget {
  const ProductImages({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  _ProductImagesState createState() => _ProductImagesState();
}

class _ProductImagesState extends State<ProductImages> {
  int selectedImage = 0;
  int selectedColor = 0;
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: getProportionedScreenWidth(240),
          child: AspectRatio(
            aspectRatio: 1,
            child: Image.asset(widget.product.productsColors.allProductsColors[selectedColor].productsColorsType.images[selectedImage]),
          ),
        ),
        SizedBox(height: getProportionedScreenHeight(10)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
              widget.product.productsColors.allProductsColors[selectedColor].productsColorsType.images.length,
                  (index) => buildSmallPreview(index),
            ),
          ],
        ),
        TopRoundedContainer(
          color: const Color(0xFFF6F7F9),
          child: Padding(
            padding: EdgeInsets.only(
              left: getProportionedScreenWidth(20),
              right: getProportionedScreenWidth(20),
              bottom: getProportionedScreenWidth(10),
            ),
            child: Row(
              children: [
                ...List.generate(
                  widget.product.colors.length,
                      (index) => buildColorDots(index),
                ),
                const Spacer(),
                RoundedIconBtn(
                  press: _decrementCounter,
                  icon: Icons.remove,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: getProportionedScreenWidth(8)),
                  child: Text("$_counter pcs",
                    style: TextStyle(
                      fontSize: getProportionedScreenWidth(14),
                      fontStyle: FontStyle.italic,
                      color: Colors.grey,
                    ),
                  ),
                ),
                RoundedIconBtn(
                  press: _incrementCounter,
                  icon: Icons.add,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  GestureDetector buildColorDots(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedColor = index;
        });
      },
      child: ColorDot(color: widget.product.colors[index],
        isSelected: selectedColor == index,
      ),
    );
  }

  GestureDetector buildSmallPreview(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedImage = index;
        });
      },
      child: Container(
        padding: EdgeInsets.all(getProportionedScreenHeight(8)),
        margin: EdgeInsets.only(right: getProportionedScreenWidth(14)),
        height: getProportionedScreenWidth(44),
        width: getProportionedScreenWidth(44),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: selectedImage == index
              ? Constants.kPrimaryColor
              : Colors.transparent,
          ),
        ),
        child: Image.asset(widget.product.productsColors.allProductsColors[selectedColor].productsColorsType.images[index]),
      ),
    );
  }
}

//demoProductsColorsPad[selectedColor].productsColorsType.images[selectedImage]