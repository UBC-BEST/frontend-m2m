import 'package:flutter/material.dart';
import 'package:frontend_m2m/services/auth.dart';

class Home extends StatelessWidget {
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("M2M"),
        backgroundColor: Colors.blue,
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
        child: ElevatedButton(
          child: Text("Sign out"),
          onPressed: () async {
            await _auth.signOut();
          },
        ),
      ),
    );
  }
}
