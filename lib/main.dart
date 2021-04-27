import 'package:flutter/material.dart';
import 'package:todo_app/todo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Set<String> todos = {};
  int _num = 1;
  void _addNewTodo() {
    setState(() {
      _num += 1;
      String next = "This is my todo no $_num";
      todos.add(next);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Todo App"),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: _addNewTodo,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: todos
                .map(
                  (e) => Todo(
                    todo: e,
                  ),
                )
                .toList(),
          ),
        ));
  }
}
