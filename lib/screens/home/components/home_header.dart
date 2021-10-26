import 'package:aneeque_app/screens/home/components/search_field.dart';
import 'package:aneeque_app/models/tab_manager.dart';
import 'package:aneeque_app/size_config.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../components/icon_btn_wth_count.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionedScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SearchField(),
          IconBtnWithCounter(
            icon: Icons.shopping_cart_outlined,
            press: () {
              Provider.of<TabManager>(context, listen: false).goToCart(context);
            },
          ),
        ],
      ),
    );
  }
}