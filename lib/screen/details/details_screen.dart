import 'package:e_commerce_app/models/products.dart';
import 'package:e_commerce_app/screen/details/components/details_body.dart';
import 'package:flutter/material.dart';
import 'components/custom_appbar.dart';

class DetailsScreen extends StatelessWidget {
  static String routeNmae = '/details';

  @override
  Widget build(BuildContext context) {
    final ProductDetailsArguments arguments =
        ModalRoute.of(context).settings.arguments;
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: CustomAppBar(
        rating: arguments.prod.rating,
      ),
      body: DetailsBody(
        product: arguments.prod,
      ),
    );
  }
}

class ProductDetailsArguments {
  final Product prod;

  ProductDetailsArguments({@required this.prod});
}
