import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
//  debugPaintSizeEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = new Container(
      padding: const EdgeInsets.all(32.0),
      child: new Row(
        children: <Widget>[
          new Expanded(
              flex: 2,
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Container(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: new Text(
                      "this is title",
                      style: new TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  new Text(
                    "this is second title",
                    style: new TextStyle(color: Colors.grey[500]),
                  )
                ],
              )),
          new Row(
            children: <Widget>[
              new Icon(
                Icons.star,
                color: Colors.red[500],
              ),
              new Text("0"),
            ],
          ),
        ],
      ),
    );

    Column buildButtonColumn(IconData icon, String label) {
      Color color = Theme.of(context).primaryColor;
      return new Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Icon(
            icon,
            color: color,
          ),
          new Container(
            margin: const EdgeInsets.only(top: 8.0),
            child: new Text(
              label,
              style: new TextStyle(
                  fontSize: 12.0, fontWeight: FontWeight.w400, color: color),
            ),
          )
        ],
      );
    }

    Widget buttonSection = new Container(
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          buildButtonColumn(Icons.call, "Call"),
          buildButtonColumn(Icons.near_me, "Route"),
          buildButtonColumn(Icons.share, "Share"),
        ],
      ),
    );

    Widget textSection = new Container(
      padding: const EdgeInsets.all(32.0),
      child: new Text(
        '''
Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.
        ''',
        softWrap: true,
      ),
    );

    return new MaterialApp(
      title: "Flutter Demo",
      theme: new ThemeData(primaryColor: Colors.blue),
      home: new Scaffold(
        appBar: AppBar(
          title: new Text("App bar"),
        ),
        body: ListView(
          children: <Widget>[
            Image.network(
              "https://github.com/bumptech/glide/blob/092e0624054db5cf00b32dea2da459df90f13b11/static/glide_logo.png?raw=true",
              width: 600.0,
              height: 240.0,
              fit: BoxFit.cover,
            ),
            new Stack(
              children: <Widget>[
                Image.asset(
                  "images/cover_big.jpg",
                  width: 600.0,
                  height: 240.0,
                  fit: BoxFit.cover,
                ),
                new Positioned(
                  child: new Text(
                    "over lap",
                    style: new TextStyle(color: Colors.white, fontSize: 36.0),
                  ),
                  bottom: 24.0,
                  right: 24.0,
                )
              ],
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }
}
