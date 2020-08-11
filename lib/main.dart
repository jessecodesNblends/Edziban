import 'package:edziban/app/presentation/providers/cart/cart_provider.dart';
import 'package:edziban/app/presentation/providers/home/products_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app/app.dart';
import 'app/presentation/screens/accounts/login_screen.dart';
import 'app/presentation/screens/home/details/details.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: ProductsProvider()),
        ChangeNotifierProvider.value(value: CartProvider())
      ],
      child: MaterialApp(
        theme: ThemeData(
          fontFamily: "Cera Pro",
          primaryColor: Color(0xFFE85852),
        ),
        routes: {
          LoginScreen.routeName: (context) => LoginScreen(),
          Details.routeName: (context) => Details(),
          App.routeName: (context) => App(),
        },
        home: LoginScreen(),
      ),
    );
  }
}
