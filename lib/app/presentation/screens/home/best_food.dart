import 'package:edziban/app/presentation/providers/home/products_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BestFood extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<ProductsProvider>(context);

    ThemeData theme = Theme.of(context);
    Size size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(
            left: 20.0,
            bottom: 10.0,
            top: 35.0,
          ),
          child: Text(
            'Best Food',
            style: TextStyle(fontSize: 21.0),
          ),
        ),
        GestureDetector(
          onTap: () {
            Map<String, String> localProduct = {
              'name': 'The number one!',
              'price': '26.00',
              'rate': '5.0',
              'clients': '150',
              'image': 'images/plate-005.jpg'
            };
            Navigator.pushNamed(context, 'details', arguments: {
              'product': localProduct,
              'index': productsData.getProducts.length,
            });
          },
          child: Hero(
            tag: 'detail_food${productsData.getProducts.length}',
            child: Container(
              width: size.width - 40,
              color: Colors.white,
              padding: const EdgeInsets.only(bottom: 10.0),
              margin: const EdgeInsets.only(
                left: 20.0,
                right: 20.0,
                bottom: 15.0,
              ),
              child: Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        height: size.width - 40,
                        width: size.width - 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(5.0),
                          ),
                          image: DecorationImage(
                            image: AssetImage('images/plate-005.jpg'),
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topRight,
                        margin: const EdgeInsets.all(10.0),
                        child: Container(
                          padding: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: Icon(
                            Icons.favorite,
                            size: 25.0,
                            color: theme.primaryColor,
                          ),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10.0,
                      bottom: 4.0,
                      left: 10.0,
                      right: 10.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'The number one!',
                          style: TextStyle(
                            fontSize: 18.0,
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
                            size: 22.0,
                            color: theme.primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 5.0,
                      left: 10.0,
                      right: 10.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          '5.0 \(150\)',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.grey[400],
                          ),
                        ),
                        Text(
                          '\$ 26.00',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
