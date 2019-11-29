import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GridView sample',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Hoge(),
    );
  }
}

class Hoge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment(0.5, 0.5),
      children: <Widget>[
        CircleAvatar(
          backgroundImage: Image.network("https://avatars3.githubusercontent.com/u/30540303?s=460&v=4").image,
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.black45
          ),
          child: Text(
            "Mia B",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}