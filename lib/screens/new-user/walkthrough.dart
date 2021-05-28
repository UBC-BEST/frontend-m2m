import 'package:flutter/material.dart';

class Walkthrough extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int currentIndex = 0;
    String walkthroughImgsFolder = "assets/new_user_walkthrough/";
    List imgsBlurbs = [
      {
        "buttonStr": "Next",
        "imgPath": walkthroughImgsFolder + "hand_balloon",
        "blurb":
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus congue suscipit mollis. Vivamus eros purus.",
        "header": "Complete exercises",
      },
      {
        "buttonStr": "Next",
        "imgPath": walkthroughImgsFolder + "hand_phone",
        "blurb":
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus congue suscipit mollis. Vivamus eros purus.",
        "header": "Play interactive games",
      },
      {
        "buttonStr": "Let's Get Started",
        "imgPath": walkthroughImgsFolder + "hand_pinch",
        "blurb":
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus congue suscipit mollis. Vivamus eros purus.",
        "header": "Track your progress",
      },
    ];
    Map imgBlurbButton = imgsBlurbs[2];
    return Container(
      child: Image(image: AssetImage(imgBlurbButton["imgPath"] + ".png")),
    );
  }
}
