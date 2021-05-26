import 'package:flutter/material.dart';
import 'package:frontend_m2m/services/auth.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        elevation: 0,
        title: Text("Sign in"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
        child: ElevatedButton(
          child: Text("Sign in"),
          onPressed: () async {
            dynamic result = await _auth.signIn();

            if (result == null) {
              print("error signing in");
              print(result);
            } else {
              print(result);
            }
          },
        ),
      ),
    );
  }
}
