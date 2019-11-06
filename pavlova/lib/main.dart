import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) => MaterialApp (
    title: 'Pavlova Demo',
    theme: ThemeData(primarySwatch: Colors.blue),
    home: Pavlova(),
  );
}

class Pavlova extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final stars = Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Icon(Icons.star, color: Colors.green[500]),
        Icon(Icons.star, color: Colors.green[500]),
        Icon(Icons.star, color: Colors.green[500]),
        Icon(Icons.star, color: Colors.black),
        Icon(Icons.star, color: Colors.black),
      ],
    );

    final ratings = Container (
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          stars,
          Text(
            '170 Reviews',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w800,
                fontFamily: 'Roboto',
                letterSpacing: 0.5,
                fontSize: 20
            ),
          )
        ],
      ),
    );

    final descTextStyle = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w800,
      fontFamily: 'Roboto',
      letterSpacing: 0.5,
      height: 2,
    );

    final iconList = DefaultTextStyle.merge(
      style: descTextStyle,
        child: Container(
          padding: EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Icon(Icons.kitchen, color: Colors.green[500]),
                  Text('PREP:'),
                  Text('25 min')
                ],
              ),
              Column(
                children: <Widget>[
                  Icon(Icons.timer, color: Colors.green[500]),
                  Text('COOK:'),
                  Text('1 hr')
                ],
              ),
              Column(
                children: <Widget>[
                  Icon(Icons.restaurant, color: Colors.green[500]),
                  Text('FOODS:'),
                  Text('4 - 6')
                ],
              ),
            ],
          ),
        )
    );
    
    final leftColumn = Container(
      padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
      child: Column(
        children: <Widget>[
          Text('title text'),
          Text('sub title'),
          ratings,
          iconList
        ],
      ),
    );

    final sample = Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 440,
          child: leftColumn,
        ),
        Expanded(
          child: Image.network('https://img.cpcdn.com/recipes/3145950/640x480cq60/b090a4c3368bc8838946e80d110a28ac.jpg?u=2477328&p=1430144424'),
        )
      ],
    );

    return Scaffold(
      body: Center(child: sample,),
    );
  }
}