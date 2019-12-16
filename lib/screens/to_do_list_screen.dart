import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do_list/model/to_do.dart';
import 'to_do_list.dart';
import 'add_item_to_do_dialoge.dart';

class ToDoListScreen extends StatefulWidget {
  final String title;
  ToDoListScreen(this.title);

  @override
  _ToDoListScreenState createState() => _ToDoListScreenState();
}

class _ToDoListScreenState extends State<ToDoListScreen> {
  List<ToDO> todos = [];
  onAddToDoPressed(BuildContext context) async {
    final todo = await showDialog<ToDO>(
      context: context,
      builder: (context) {
        return AddItemDialoge();
      },
    );
    if (todo != null) {
      setState(() {
        todos.add(todo);
        print(todos.length);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ToDoList(todos),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => onAddToDoPressed(context),
      ),
    );
  }
}
