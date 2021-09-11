import 'package:app/confin/constant.dart';
import 'package:app/screen/login.dart';
import 'package:app/screen/register.dart';
import 'package:flutter/material.dart';
import 'screen/index.dart';

void main() => runApp(ShowText());

class ShowText extends StatelessWidget {
  // const ShowText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ShowIndex(),
      routes: {
        'Login': (context) => Login(),
        'Register': (context) => Register()
      },
      theme:
          ThemeData(
            primaryColor: pColor, 
            secondaryHeaderColor: sColor),
      // seconder
    );
  }
}
