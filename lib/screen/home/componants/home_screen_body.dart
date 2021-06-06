import 'package:e_commerce_app/size_config.dart';
import 'package:flutter/material.dart';


import 'categories.dart';
import 'discount_banner.dart';
import 'home_header.dart';
import 'section_title.dart';

class HomeScreenBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(20)),
            HomeHeader(),
            SizedBox(height: getProportionateScreenHeight(20)),
            DiscountBanner(),
            SizedBox(height: getProportionateScreenHeight(20)),
            Categoris(),
            SizedBox(height: getProportionateScreenHeight(20)),
            SectionTitle(
              
              text: 'Spatiol for you',
              press: () {},
            )
          ],
        ),
      ),
    );
  }
}

