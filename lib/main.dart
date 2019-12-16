import 'package:flutter/material.dart';
import 'package:to_do_list/screens/to_do_list_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ToDoListScreen('To Do List'),
    );
  }
}
