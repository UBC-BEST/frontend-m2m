import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class GamesPage extends StatefulWidget {
  @override
  _GamesPageState createState() => _GamesPageState();
}

class _GamesPageState extends State<GamesPage> {
  final List<String> entries = <String>['A', 'B', 'C'];
  final List<MaterialColor> colorsBottom = [
    Colors.purple,
    Colors.amber,
    Colors.blue,
  ];
  final List<MaterialColor> colorsTop = [
    Colors.pink,
    Colors.green,
    Colors.orange
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Text(
            "Games",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              child: Text(
                "Continue",
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(top: 12.0, bottom: 12.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
                color: Colors.blue[50],
              ),
              width: MediaQuery.of(context).size.width,
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              child: Text(
                "Favorites",
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 12.0, bottom: 12.0),
            height: MediaQuery.of(context).size.height / 5,
            width: MediaQuery.of(context).size.width,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: entries.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    color: colorsTop[index][50],
                  ),
                  margin: const EdgeInsets.only(left: 5.0, right: 5.0),
                  width: (MediaQuery.of(context).size.width / 3),
                  child: Center(child: Text('Entry ${entries[index]}')),
                );
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              child: Text(
                "More Games",
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 5.0, bottom: 5.0),
            height: MediaQuery.of(context).size.height / 5,
            width: MediaQuery.of(context).size.width,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: entries.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    color: colorsBottom[index][50],
                  ),
                  margin: const EdgeInsets.only(left: 5.0, right: 5.0),
                  width: (MediaQuery.of(context).size.width / 3),
                  child: Center(child: Text('Entry ${entries[index]}')),
                );
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(),
            ),
          ),
        ],
      ),
    );
  }
}
