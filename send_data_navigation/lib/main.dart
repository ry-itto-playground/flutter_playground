import 'package:flutter/material.dart';
import 'package:senddatanavigation/model/model.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: TodoScreen(todoList: [
        TodoData(title: "hoge", description: "fuga"),
        TodoData(),
      ]),
    );
  }
}

class TodoScreen extends StatelessWidget {
  final List<TodoData> _todoList;
  TodoScreen({Key key, @required todoList})
      : assert(todoList != null),
        this._todoList = todoList,
        super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: Text("TODO"),
      ),
      body: ListView.builder(
        itemCount: _todoList.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(_todoList[index].title),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailScreen(
                  todoData: _todoList[index],
                ),
              ),
            );
          },
        ),
      ));
}

class DetailScreen extends StatelessWidget {
  final TodoData _todoData;

  DetailScreen({Key key, @required TodoData todoData})
      : assert(todoData != null),
        this._todoData = todoData,
        super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(_todoData.title),
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(_todoData.description),
        ),
      );
}
