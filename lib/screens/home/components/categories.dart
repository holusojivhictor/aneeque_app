import 'package:flutter/material.dart';

import '../../../size_config.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"icon": "assets/images/icons8-flash.png", "text": "Flash Deal"},
      {"icon": "assets/images/icons8-bill-cipher.png", "text": "Bill"},
      {"icon": "assets/images/icons8-game-controller.png", "text": "Game"},
      {"icon": "assets/images/icons8-gift.png", "text": "Daily Gift"},
      {"icon": "assets/images/icons8-recycle.png", "text": "More"},
    ];

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionedScreenWidth(20)),
      child: Column(
        children: [
          /*Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...List.generate(categories.length, (index) => CategoryCard(
                  icon: categories[index]["icon"],
                  press: () {},
                  text: categories[index]["text"]),
              ),
            ],
          ),*/
          Wrap(
            spacing: 16,
            runSpacing: 5,
            children: [
              'Shoes',
              'Clothes',
              'Fashion',
              'Beauty',
              'Games',
            ].map((String name) => Chip(
              label: Text(name),
              elevation: 0,
              backgroundColor: Colors.white,
              side: const BorderSide(color: Colors.grey),
            )).toList(),
          ),
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({Key? key, required this.icon, required this.press, required this.text}) : super(key: key);

  final String icon, text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: getProportionedScreenWidth(50),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                padding: EdgeInsets.all(getProportionedScreenWidth(18)),
                decoration: BoxDecoration(
                  color: Colors.indigo.shade100,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(icon),
              ),
            ),
            const SizedBox(height: 5),
            Text(text, textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}