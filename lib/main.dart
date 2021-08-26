import 'package:flutter/material.dart';
import 'Home.dart';
import 'index.dart';

void main() =>runApp(ShowText());

class ShowText extends StatelessWidget {
  const ShowText({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ShowIndex(),
    );
  }
}
