import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Hoge(),
    );
  }
}

class Hoge extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          _tile("A", "B", Icons.access_alarm),
          _tile("A", "B", Icons.access_alarm),
          _tile("A", "B", Icons.access_alarm),
          _tile("A", "B", Icons.access_alarm),
          _tile("A", "B", Icons.access_alarm),
          _tile("A", "B", Icons.access_alarm),
          _tile("A", "B", Icons.access_alarm),
        ],
      )
    );
  }

  ListTile _tile(String title, String subtitle, IconData icon) => ListTile(
    title: Text(title,
      style: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 20,
      ),
    ),
    subtitle: Text(subtitle),
    leading: Icon(
      icon,
      color: Colors.blue[500],
    ),
  );
}