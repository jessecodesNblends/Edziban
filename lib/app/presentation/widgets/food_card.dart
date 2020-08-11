import 'package:edziban/app/domain/entities/home/product.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FoodCard extends StatelessWidget {
  final Product product;
  final double width;
  final Color primaryColor;

  FoodCard({
    @required this.product,
    @required this.width,
    @required this.primaryColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      color: Colors.white,
      padding: const EdgeInsets.all(10.0),
      margin: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 140.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(product.image),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.topRight,
                child: Container(
                  padding: const EdgeInsets.all(4.0),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[300],
                        blurRadius: 4.0,
                        offset: Offset(3.0, 3.0),
                      )
                    ],
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: Consumer<Product>(
                    builder: (context, product, child) => IconButton(
                      icon: Icon(
                        product.isFavourite
                            ? Icons.favorite
                            : Icons.favorite_border,
                        size: 17.0,
                        color: primaryColor,
                      ),
                      onPressed: () {
                        product.toggleFavouriteStatus();
                        print(product.isFavourite);
                      },
                    ),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 10.0,
              bottom: 4.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  product.name,
                  style: TextStyle(
                    fontSize: 14.0,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(4.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey[300],
                          blurRadius: 4.0,
                          offset: Offset(3.0, 3.0),
                        )
                      ]),
                  child: Icon(
                    Icons.near_me,
                    size: 17.0,
                    color: primaryColor,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  '',
                  style: TextStyle(
                    fontSize: 13.0,
                    color: Colors.grey[400],
                  ),
                ),
                Text(
                  '\$ ${product.price}',
                  style: TextStyle(
                    fontSize: 13.0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
