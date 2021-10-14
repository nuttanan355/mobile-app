// ignore_for_file: unused_import

import 'package:app/confin/constant.dart';
import 'package:app/model/callAPI.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:path/path.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  DashboardState createState() => DashboardState();
}

class DashboardState extends State<Dashboard> {
  var data;

  @override
  void initState() {
    super.initState();
    print('Hello');
    callAPI();
    ;
  }

  Future<void> callAPI() async {
    var url = Uri.parse('https://www.boredapi.com/api/activity');
    var response = await http.get(url);
    setState(() {
      data = apiFromJson(response.body);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: sColor,
              ),
              child: Text(
                'Menu ',
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.blue,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                print("Menu Video");
                Navigator.pushNamed(context, 'Video');
              },
              title: Text(
                'Video',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              leading: Icon(
                Icons.video_call,
                color: Colors.amber,
                size: 36,
              ),
            ),
            ListTile(
              title: Text(
                'Image',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              leading: Icon(
                Icons.image,
                color: Colors.green,
                size: 36,
              ),
              onTap: () {
                print('Menu Image');
                Navigator.pushNamed(context, 'Image');
              },
            ),
            ListTile(
              onTap: () {
                print('Menu Location');
                Navigator.pushNamed(context, 'Location');
              },
              title: Text(
                'Location',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              leading: Icon(
                Icons.gps_fixed,
                color: Colors.pink,
                size: 36,
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Row(
          children: [
            Icon(Icons.api),
            SizedBox(width: 10),
            Text('Dashboard'),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(data?.activity ?? "loading.."),
            Text(data?.type ?? ''),
            Text('${data?.price ?? ""}'),
            Text('${data?.participants ?? ""}'),
          ],
        ),
      ),
    );
  }
}
