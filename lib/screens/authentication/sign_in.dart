import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:frontend_m2m/services/auth.dart';

class SignIn extends StatefulWidget {
  final Function toggleView;

  SignIn({required this.toggleView});

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();
  String password = "";
  String email = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: Text("Sign in"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: Form(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                autocorrect: false,
                onChanged: (value) {
                  setState(() => email = value);
                },
              ),
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                autocorrect: false,
                obscureText: true,
                onChanged: (value) {
                  setState(() => password = value);
                },
              ),
              SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                onPressed: () async {
                  print(email);
                  print(password);
                },
                child: Text("Sign in"),
              ),
              RichText(
                text: TextSpan(
                  text: "Don't have an account? Sign up!",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      widget.toggleView();
                    },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
