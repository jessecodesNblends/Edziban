import 'package:flutter/material.dart';

import 'app/app.dart';
import 'app/presentation/screens/accounts/login_screen.dart';
import 'app/presentation/screens/home/details/details.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
    );
  }
}
