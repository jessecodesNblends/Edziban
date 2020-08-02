import 'package:edziban/app/domain/entities/home/product.dart';
import 'package:flutter/material.dart';

import 'body_details.dart';

class Details extends StatelessWidget {
  static const routeName = '/details';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final Map screenArguments = ModalRoute.of(context).settings.arguments;
    Product product = screenArguments['product'];
    int index = screenArguments['index'];

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Hero(
            tag: 'detail_food$index',
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
