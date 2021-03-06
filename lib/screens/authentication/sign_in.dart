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
  String error = "";
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Sign in",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: Column(
          children: <Widget>[
            Image(
              image: AssetImage("assets/login_signup/signin_person.png"),
            ),
            Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    "Email",
                    textAlign: TextAlign.left,
                  ),
                  TextFormField(
                    validator: (value) =>
                        value!.isEmpty ? "Enter an email" : null,
                    autocorrect: false,
                    onChanged: (value) {
                      setState(() => email = value);
                    },
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text("Password"),
                  TextFormField(
                    validator: (value) =>
                        value!.length < 6 ? "Enter a password" : null,
                    autocorrect: false,
                    obscureText: true,
                    onChanged: (value) {
                      setState(() => password = value);
                    },
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(error),
                  SizedBox(
                    height: 10.0,
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        dynamic result = await _auth.signIn(email, password);
                        if (result == null) {
                          setState(() => error = "Please try again.");
                        }
                      }
                    },
                    child: Text("Sign in"),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: [
                      Text("Don't have an account?"),
                      RichText(
                        text: TextSpan(
                          text: "Sign up!",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              widget.toggleView();
                            },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
