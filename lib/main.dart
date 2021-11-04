import 'package:app/backend/dashboard.dart';
import 'package:app/confin/constant.dart';
import 'package:app/screen/login.dart';
import 'package:app/screen/packagelocation.dart';
import 'package:app/screen/packagevideo.dart';
import 'package:app/screen/packegimage.dart';
import 'package:app/screen/register.dart';
import 'package:app/screen/store.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'screen/index.dart';

// void main() => runApp(ShowText());
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(ShowText());
}

class ShowText extends StatelessWidget {
  // const ShowText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ShowIndex(),
      routes: {
        'Login': (context) => Login(),
        'Register': (context) => Register(),
        'Dashboard': (context) => Dashboard(),
        'Image': (context) => PackageImage(),
        'Video': (context) => PackageVideo(),
        'Location': (context) => PackageLocation(),
         'Store': (context) => Store(),
      },
      theme: ThemeData(primaryColor: pColor, secondaryHeaderColor: sColor),
      // seconder
    );
  }
}
