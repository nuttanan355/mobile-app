import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShowHome extends StatelessWidget {
  const ShowHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My App"),
      ),
      body: Container(
        color: Colors.green[400],
        alignment: Alignment.center,
        child: Stack(
          children: [
            Positioned(
                child: Text(
              'Hello,! How are you?',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ))
          ],
        ),
      ),
    );
  }
}
