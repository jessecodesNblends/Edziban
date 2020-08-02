import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(
            top: 20.0,
            left: 20.0,
            right: 20.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'What would you like to eat?',
                style: TextStyle(fontSize: 21.0),
              ),
              Icon(Icons.notifications_none, size: 28.0)
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 25.0,
            left: 20.0,
            right: 20.0,
          ),
          child: TextField(
            keyboardType: TextInputType.text,
            autocorrect: true,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey[300], width: 1.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: theme.primaryColor, width: 1.0),
              ),
              prefixIcon: Icon(
                Icons.search,
                size: 28.0,
                color: theme.primaryColor,
              ),
              suffixIcon: Icon(
                Icons.filter_list,
                size: 28.0,
                color: theme.primaryColor,
              ),
              hintText: 'Find a food or Restaurant',
              hintStyle: TextStyle(
                color: Colors.grey[400],
                fontSize: 19.0,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
