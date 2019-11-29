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

  final images = [
    "https://avatars3.githubusercontent.com/u/30540303?s=460&v=4",
    "https://avatars3.githubusercontent.com/u/30540303?s=460&v=4",
    "https://avatars3.githubusercontent.com/u/30540303?s=460&v=4",
    "https://avatars3.githubusercontent.com/u/30540303?s=460&v=4",
    "https://avatars3.githubusercontent.com/u/30540303?s=460&v=4",
    "https://avatars3.githubusercontent.com/u/30540303?s=460&v=4",
    "https://avatars3.githubusercontent.com/u/30540303?s=460&v=4",
    "https://avatars3.githubusercontent.com/u/30540303?s=460&v=4",
    "https://avatars3.githubusercontent.com/u/30540303?s=460&v=4",
    "https://avatars3.githubusercontent.com/u/30540303?s=460&v=4",
    "https://avatars3.githubusercontent.com/u/30540303?s=460&v=4",
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      maxCrossAxisExtent: 150,
      padding: EdgeInsets.all(4),
      mainAxisSpacing: 4,
      crossAxisSpacing: 4,
      children: images.map((image) => Container(
        child: Image.network(image),
      )).toList(),
    );
  }
}