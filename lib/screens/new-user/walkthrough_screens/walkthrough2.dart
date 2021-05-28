import 'package:flutter/material.dart';
import 'package:frontend_m2m/screens/new-user/walkthrough_screens/walkthrough3.dart';
import 'package:frontend_m2m/screens/new-user/walkthrough_screens/walkthrough_template.dart';

class Walkthrough2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Walkthrough(
        imgPath: "hand_phone",
        buttonStr: "Next",
        blurb:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus congue suscipit mollis. Vivamus eros purus.",
        action: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Walkthrough3()),
          );
        },
        header: "Play interactive games");
  }
}
