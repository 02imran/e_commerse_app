

import 'package:e_commerce_app/screen/home/componants/search_field.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'icon_button.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchField(),
          IconBtnWithCounter(
            svgPic: 'assets/icons/Cart Icon.svg',
            press: () {},
          ),
          IconBtnWithCounter(
            svgPic: 'assets/icons/Bell.svg',
            press: () {},
            numberOfItem: 2,
          ),
        ],
      ),
    );
  }
}

