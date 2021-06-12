import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'section_title.dart';

class SpatialOffers extends StatelessWidget {
  const SpatialOffers({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: 'Spatiol for you',
          press: () {},
        ),
        SizedBox(height: getProportionateScreenHeight(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SpatialOfferCard(
                image: 'assets/images/Image Banner 2.png',
                numberOfBrands: 18,
                press: () {},
                categoris: 'SmartPhones',
              ),
              SpatialOfferCard(
                image: 'assets/images/Image Banner 3.png',
                numberOfBrands: 10,
                press: () {},
                categoris: 'Fashions',
              ),
              SizedBox(
                width: getProportionateScreenWidth(20),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class SpatialOfferCard extends StatelessWidget {
  const SpatialOfferCard({
    Key key,
    this.categoris,
    @required this.image,
    @required this.numberOfBrands,
    @required this.press,
  }) : super(key: key);

  final String categoris, image;
  final int numberOfBrands;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20),
      child: SizedBox(
        width: getProportionateScreenWidth(210),
        height: getProportionateScreenHeight(97),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: GestureDetector(
            onTap: press,
            child: Stack(
              children: [
                Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFF343434).withOpacity(0.4),
                        Color(0xFF343434).withOpacity(0.10),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(20),
                      vertical: getProportionateScreenWidth(10)),
                  child: Text.rich(
                    TextSpan(
                      style: TextStyle(color: Colors.white),
                      children: [
                        TextSpan(
                          text: '$categoris \n',
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(18),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(text: '$numberOfBrands Brands')
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
