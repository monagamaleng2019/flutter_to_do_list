import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do_list/model/to_do.dart';

class ToDoList extends StatefulWidget {
final List<ToDO> todos ;
ToDoList(this.todos);
  @override
  _ToDoListState createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {
 
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.todos.length,
      itemBuilder:(context, index)
      {
        return CheckboxListTile(
          title: Text(widget.todos[index].title),
          value: (widget.todos[index].isChecked),
          onChanged: (value)
          {
              setState(() {
                widget.todos[index].isChecked = !widget.todos[index].isChecked;
              });
          },

        ) ;
      } ,
    );
  }
}

