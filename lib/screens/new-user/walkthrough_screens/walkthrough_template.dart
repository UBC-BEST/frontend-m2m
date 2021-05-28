import 'package:flutter/material.dart';
import 'package:frontend_m2m/model/m2m_user.dart';
import 'package:frontend_m2m/screens/bottom-nav/bottom-nav.dart';
import 'package:frontend_m2m/screens/wrapper.dart';
import 'package:provider/provider.dart';

class Walkthrough extends StatelessWidget {
  final String imgPath;
  final String buttonStr;
  final String blurb;
  final Function action;
  final String header;

  Walkthrough(
      {required this.imgPath,
      required this.buttonStr,
      required this.blurb,
      required this.action,
      required this.header});

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<M2MUser?>(context);
    if (user != null) {
      return Home();
    } else {
      String walkthroughImgsFolder = "assets/new_user_walkthrough/";
      return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 50.0),
          child: Column(
            children: <Widget>[
              Image(
                height: MediaQuery.of(context).size.height / 2,
                image:
                    AssetImage(walkthroughImgsFolder + this.imgPath + ".png"),
              ),
              Text(
                this.header,
              ),
              Text(
                this.blurb,
              ),
              ElevatedButton(
                onPressed: () {
                  this.action();
                },
                child: Text(this.buttonStr),
              )
            ],
          ),
        ),
      );
    }
  }
}
