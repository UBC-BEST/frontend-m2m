import 'package:flutter/material.dart';
import 'package:frontend_m2m/model/m2m_user.dart';
import 'package:frontend_m2m/screens/home/home.dart';
import 'package:frontend_m2m/screens/wrapper.dart';
import 'package:provider/provider.dart';

class Walkthrough extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<M2MUser?>(context);
    if (user != null) {
      return Wrapper();
    } else {
      int currentIndex = 0;
      String walkthroughImgsFolder = "assets/new_user_walkthrough/";
      List imgBlurbButtons = [
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
      Map imgBlurbButton = imgBlurbButtons[0];
      return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 50.0),
          child: Column(
            children: <Widget>[
              Image(
                image: AssetImage(imgBlurbButton["imgPath"] + ".png"),
              ),
              Text(
                imgBlurbButton["header"],
              ),
              Text(
                imgBlurbButton["blurb"],
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Wrapper(),
                    ),
                  );
                },
                child: Text(imgBlurbButton["buttonStr"]),
              )
            ],
          ),
        ),
      );
    }
  }
}
