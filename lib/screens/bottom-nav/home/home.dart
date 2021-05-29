import 'package:flutter/material.dart';
import 'package:frontend_m2m/services/client.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _api = APIClient();
  @override
  Widget build(BuildContext context) {
    var response = _api.getTestAPIEndpoint();
    return Column(
      children: [
        Text("Home"),
      ],
    );
  }
}
