import 'package:e_commerce_app/components/products_card.dart';
import 'package:e_commerce_app/models/products.dart';
import 'package:e_commerce_app/screen/details/details_screen.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'section_title.dart';

class PopularProduct extends StatelessWidget {
  const PopularProduct({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: 'Popular Product',
          press: () {},
        ),
        SizedBox(height: getProportionateScreenHeight(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demoProducts.length,
                (index) {
                  if (demoProducts[index].isPopular)
                    return ProductCard(
                      product: demoProducts[index],
                      press: () => Navigator.pushNamed(
                        context,
                        DetailsScreen.routeNmae,
                        arguments: ProductDetailsArguments(
                          prod: demoProducts[index],
                        ),
                      ),
                    );

                  return SizedBox
                      .shrink(); // here by default width and height is 0
                },
              ),
              SizedBox(width: getProportionateScreenWidth(20)),
            ],
          ),
        ),
      ],
    );
  }
}
