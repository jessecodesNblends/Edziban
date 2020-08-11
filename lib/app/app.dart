import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'presentation/providers/home/products_provider.dart';
import 'presentation/screens/cart/cart_screen.dart';
import 'presentation/screens/home/home_screen.dart';
import 'presentation/screens/near_by/near_by_screen.dart';
import 'presentation/screens/profile/profile_screen.dart';

class App extends StatelessWidget {
  static const routeName = '/app';

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: TabBarView(
          children: <Widget>[
            HomeScreen(),
            NearByScreen(),
            CartScreen(),
            ProfileScreen(),
          ],
        ),
        bottomNavigationBar: Material(
          color: Colors.white,
          child: TabBar(
            labelPadding: const EdgeInsets.only(bottom: 10),
            labelStyle: TextStyle(fontSize: 16.0),
            indicatorColor: Colors.transparent,
            labelColor: theme.primaryColor,
            unselectedLabelColor: Colors.black54,
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.home, size: 28),
                text: 'Home',
              ),
              Tab(
                icon: Icon(Icons.gps_not_fixed, size: 28),
                text: 'Near By',
              ),
              Tab(
                icon: Icon(Icons.card_travel, size: 28),
                text: 'Cart',
              ),
              Tab(
                icon: Icon(Icons.person_outline, size: 28),
                text: 'Account',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
