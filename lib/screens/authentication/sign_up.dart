import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:frontend_m2m/services/auth.dart';

class SignUp extends StatefulWidget {
  final Function toggleView;

  SignUp({required this.toggleView});

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final AuthService _auth = AuthService();
  String password = "";
  String email = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: Text("Sign up"),
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
                child: Text("Sign up"),
              ),
              RichText(
                text: TextSpan(
                  text: "Already have an account? Sign in!",
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
