import 'package:e_commerce_app/components/default_button.dart';
import 'package:e_commerce_app/models/products.dart';
import 'package:e_commerce_app/size_config.dart';
import 'package:flutter/material.dart';
import 'color_dots.dart';
import 'product_description.dart';
import 'product_image.dart';
import 'tap_rounded_container.dart';

class DetailsBody extends StatelessWidget {
  final Product product;

  const DetailsBody({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProductImage(product: product),
          TopRoundedContainer(
            color: Colors.white,
            child: Column(
              children: [
                ProductDescription(
                  product: product,
                  press: () {},
                ),
                TopRoundedContainer(
                  color: Color(0xFFF6F7F9),
                  child: Column(
                    children: [
                      ColorsDots(product: product),
                      TopRoundedContainer(
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: SizeConfig.screenWidth * 0.15,
                            right: SizeConfig.screenWidth * 0.15,
                            top: getProportionateScreenHeight(15),
                          ),
                          child: DefaultButton(
                            press: () {},
                            text: 'Add to Cart',
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
