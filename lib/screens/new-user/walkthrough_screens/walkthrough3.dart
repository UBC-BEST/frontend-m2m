import 'package:flutter/material.dart';
import 'package:frontend_m2m/screens/new-user/walkthrough_screens/walkthrough_template.dart';
import 'package:frontend_m2m/screens/wrapper.dart';

class Walkthrough3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Walkthrough(
        imgPath: "hand_phone",
        buttonStr: "Let's Get Started!",
        blurb:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus congue suscipit mollis. Vivamus eros purus.",
        action: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Wrapper()),
          );
        },
        header: "Track your progress");
  }
}
