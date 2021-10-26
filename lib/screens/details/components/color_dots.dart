import 'package:aneeque_app/components/rounded_icon_btn.dart';
import 'package:aneeque_app/models/products.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class ColorDots extends StatefulWidget {
  const ColorDots({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  _ColorDotsState createState() => _ColorDotsState();
}

class _ColorDotsState extends State<ColorDots> {
  int selectedColor = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionedScreenWidth(20),
      ),
      child: Row(
        children: [
          ...List.generate(
            widget.product.colors.length,
                (index) => buildColorDots(index),
          ),
          const Spacer(),
          RoundedIconBtn(press: () {}, icon: Icons.remove),
          SizedBox(width: getProportionedScreenWidth(12)),
          RoundedIconBtn(press: () {}, icon: Icons.add),
        ],
      ),
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
}

class ColorDot extends StatelessWidget {
  const ColorDot({
    Key? key,
    required this.color,
    this.isSelected = false,
  }) : super(key: key);

  final Color color;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 2),
      padding: const EdgeInsets.all(6),
      height: getProportionedScreenWidth(30),
      width: getProportionedScreenWidth(30),
      decoration: BoxDecoration(
        //color: product.colors[0],
        shape: BoxShape.circle,
        border: Border.all(color: isSelected
            ? Constants.kPrimaryColor
            : Colors.transparent,
        ),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}