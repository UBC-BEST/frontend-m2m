import 'package:flutter/material.dart';
import 'package:frontend_m2m/screens/authentication/sign_in.dart';
import 'package:frontend_m2m/screens/authentication/sign_up.dart';

class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  bool showSignUp = true;

  void toggleView() {
    setState(() => showSignUp = !showSignUp);
  }

  @override
  Widget build(BuildContext context) {
    if (showSignUp) {
      return SignUp(toggleView: toggleView);
    } else {
      return SignIn(toggleView: toggleView);
    }
  }
}
