import 'package:flutter/material.dart';

import 'best_food.dart';
import 'categories.dart';
import 'header.dart';
import 'popular_food.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = "/";

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Header(),
            Categories(),
            PopularFood(),
            BestFood(),
          ],
        ),
      ),
    );
  }
}
