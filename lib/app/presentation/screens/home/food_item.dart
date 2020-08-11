import 'package:edziban/app/domain/entities/home/product.dart';
import 'package:edziban/app/presentation/screens/home/details/details.dart';
import 'package:edziban/app/presentation/widgets/food_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FoodItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    Size size = MediaQuery.of(context).size;

    final product = Provider.of<Product>(context, listen: false);

    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, Details.routeName, arguments: product.id);
      },
      child: Hero(
        tag: 'detail_food${product.id}',
        child: FoodCard(
          product: product,
          width: size.width / 2 - 30.0,
          primaryColor: theme.primaryColor,
        ),
      ),
    );
  }
}
