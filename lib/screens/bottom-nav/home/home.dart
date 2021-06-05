import 'package:flutter/material.dart';
import 'package:frontend_m2m/services/client.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _api = APIClient();
  var data;

  @override
  void initState() {
    super.initState();
    this.setState(() {
      data = _api.getTestAPIEndpoint();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text("Home"),
      ],
    );
  }
}
