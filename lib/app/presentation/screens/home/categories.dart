import 'package:edziban/app/data/models/home/data_source.dart';
import 'package:edziban/app/domain/entities/home/category.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  final List<Category> foodOptions = CATEGORIES;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 105,
      margin: const EdgeInsets.only(
        top: 20.0,
        bottom: 25.0,
      ),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.only(
            left: 20.0,
          ),
          itemCount: this.foodOptions.length,
          itemBuilder: (context, index) {
            Category category = this.foodOptions[index];
            return Container(
              margin: const EdgeInsets.only(right: 35.0),
              child: Column(
                children: <Widget>[
                  Container(
                    width: 70,
                    height: 70,
                    margin: const EdgeInsets.only(bottom: 10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5.0),
                      ),
                      image: DecorationImage(
                        image: AssetImage(category.imageUrl),
                      ),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10.0,
                          color: Colors.grey[300],
                          offset: Offset(6.0, 6.0),
                        )
                      ],
                    ),
                  ),
                  Text(
                    category.title,
                    style: TextStyle(fontSize: 17.0),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
