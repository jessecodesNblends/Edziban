import 'package:edziban/app/presentation/providers/home/products_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'body_details.dart';

class Details extends StatelessWidget {
  static const routeName = '/details';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final productId = ModalRoute.of(context).settings.arguments;

    final productData = Provider.of<ProductsProvider>(context, listen: false);
    final product = productData.findProductById(productId);

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Hero(
            tag: 'detail_food${product.id}',
            child: Container(
              alignment: Alignment.topCenter,
              width: size.width,
              height: size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(product.image),
                ),
              ),
            ),
          ),
          BodyDetails(),
        ],
      ),
    );
  }
}
