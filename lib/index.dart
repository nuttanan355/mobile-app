import 'package:flutter/material.dart';

class ShowIndex extends StatelessWidget {
  const ShowIndex({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var setSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: Colors.red,
        alignment: Alignment.center,
        width: setSize.width,
        child: Stack(
          children:[
            Positioned(
              top: -30,
              left: -30,
              child: Image(
                image: NetworkImage(
                    'https://www.emojiall.com/images/240/twitter/1f7e0.png'),
              width: setSize.width*0.4,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "asset/image/logo_kmutnb.png",
                  width: setSize.width * 0.4,
                  // height: setSize.height * 0.4,
                ),
                Text("Welcome to KMUTNB",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    )),
                Image(
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1629907590706-3d2c87175882?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80'),
                  width: setSize.width * 0.4,
                  // height: setSize.height * 0.4,
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.amber,
                    padding: EdgeInsets.fromLTRB(120, 10, 120, 10),
                    shape: StadiumBorder(),
                  ),
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 24),
                  ),
                  onPressed: () {},
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.amber,
                    padding: EdgeInsets.fromLTRB(110, 10, 110, 10),
                    shape: StadiumBorder(),
                  ),
                  child: Text(
                    "Sign up",
                    style: TextStyle(fontSize: 24),
                  ),
                  onPressed: () {},
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
