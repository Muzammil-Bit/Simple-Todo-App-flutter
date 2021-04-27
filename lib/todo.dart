import 'package:flutter/material.dart';

class Todo extends StatelessWidget {
  String todo;
  Todo({this.todo});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 40),
      child: Center(
          child: Text(
        todo,
        style: TextStyle(color: Colors.white, fontSize: 18),
      )),
    );
  }
}
