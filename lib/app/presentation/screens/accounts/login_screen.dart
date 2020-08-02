// Flutter imports
import 'package:edziban/app/resources/dimens.dart';
import 'package:flutter/material.dart';

// App imports

import '../../../app.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = '/loginScreen';

  login(context) {
    Navigator.popAndPushNamed(context, App.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: Colors.pink[400],
            ),
          ),
          Center(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Waves',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: xxlgSpace,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 2 * xxlgSpace),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Username',
                    ),
                  ),
                  SizedBox(height: mdSpace),
                  TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: InputBorder.none,
                      hintText: 'Password',
                    ),
                  ),
                  SizedBox(height: xsmSpace),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      FlatButton(
                        onPressed: () {},
                        padding: EdgeInsets.all(0),
                        child: Text(
                          'Forgot password?',
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: xsmSpace),
                  FlatButton(
                    onPressed: () => login(context),
                    child: Text('Login'),
                    color: Colors.white,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
