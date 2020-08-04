import 'package:edziban/app/domain/entities/home/product.dart';
import 'package:edziban/app/presentation/providers/home/products_provider.dart';
import 'package:edziban/app/presentation/widgets/food_card.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'details/details.dart';

class PopularFood extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<ProductsProvider>(context);
    final products = productsData.getProducts;

    ThemeData theme = Theme.of(context);
    Size size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 20.0, bottom: 10.0),
          child: Text(
            'Popular Food',
            style: TextStyle(fontSize: 21.0),
          ),
        ),
        Container(
          height: 220.0,
          child: ListView.builder(
            padding: const EdgeInsets.only(left: 10.0),
            scrollDirection: Axis.horizontal,
            itemCount: products.length,
            itemBuilder: (context, index) {
              Product product = products[index];
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    Details.routeName,
                    arguments: {
                      'product': product,
                      'index': index,
                    },
                  );
                },
                child: Hero(
                  tag: 'detail_food$index',
                  child: FoodCard(
                    width: size.width / 2 - 30.0,
                    primaryColor: theme.primaryColor,
                    productName: product.name,
                    productPrice: product.price,
                    productUrl: product.image,
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
