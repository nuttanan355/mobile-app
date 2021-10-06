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
            SizedBox(
              height: 20,
            ),
            Text(
              data?.activity ?? 'Loading...',
              style: TextStyle(
                color: pColor,
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '${data?.price ?? ""}',
              style: TextStyle(
                color: pColor,
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '${data?.price ?? ""}',
              style: TextStyle(
                color: pColor,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '${data?.participants ?? ""}',
              style: TextStyle(
                color: pColor,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
