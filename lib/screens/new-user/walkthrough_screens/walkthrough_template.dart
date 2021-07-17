import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:frontend_m2m/model/m2m_user.dart';
import 'package:frontend_m2m/screens/bottom-nav/bottom-nav.dart';
import 'package:provider/provider.dart';

class Walkthrough extends StatelessWidget {
  final String imgPath;
  final String buttonStr;
  final String blurb;
  final Function action;
  final String header;
  final Alignment imgAlignment;

  Walkthrough(
      {required this.imgPath,
      required this.buttonStr,
      required this.blurb,
      required this.action,
      required this.header,
      this.imgAlignment = Alignment.centerLeft});

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
          child: Column(
            children: <Widget>[
              Align(
                alignment: this.imgAlignment,
                child: Image(
                  height: MediaQuery.of(context).size.height / 2,
                  width: 250,
                  image:
                      AssetImage(walkthroughImgsFolder + this.imgPath + ".png"),
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    this.header,
                    style: TextStyle(fontFamily: 'Rubik'),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 40, right: 40, bottom: 60),
                  child: Text(
                    this.blurb,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontFamily: 'Rubik'),
                  ),
                ),
              ),
              SizedBox(
                width: 270,
                height: 39,
                child: ElevatedButton(
                  onPressed: () {
                    this.action();
                  },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    )),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue.shade600),
                  ),
                  child: Text(
                    this.buttonStr,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }
  }
}
