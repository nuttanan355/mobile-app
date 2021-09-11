import 'package:app/confin/constant.dart';
import 'package:flutter/material.dart';

class ShowIndex extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var setSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: sColor,
        alignment: Alignment.center,
        width: setSize.width,
        child: Stack(
          children: <Widget> [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [
                Image.asset(
                  "asset/image/logo_kmutnb.png",
                  width: setSize.width * 0.4,
                  // height: setSize.height * 0.4,
                ),
                Text("Welcome to KMUTNB",
                    style: TextStyle(
                      color: pColor,
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
                    primary: pColor,
                    padding: EdgeInsets.fromLTRB(120, 10, 120, 10),
                    shape: StadiumBorder(),
                  ),
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 24),
                  ),
                  onPressed: () {
                     Navigator.pushNamed(context, 'Login');
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: pColor,
                    padding: EdgeInsets.fromLTRB(110, 10, 110, 10),
                    shape: StadiumBorder(),
                  ),
                  child: Text(
                    "Sign up",
                    style: TextStyle(fontSize: 24),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, 'Register');
                  },
                )
              ],
            ),           
             Positioned(
              top: -30,
              left: -30,
              child: Image.asset("asset/image/WowBule.png",
                width: setSize.width * 0.4,
                )
            ),
          ],
        ),
      ),
    );
  }
}
