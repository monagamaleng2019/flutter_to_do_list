import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do_list/model/to_do.dart';

class AddItemDialoge extends StatelessWidget {
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('New Task To Do'),
      content: TextField(
        controller: controller,
        autofocus: true,
      ),
      actions: <Widget>[
        FlatButton(
          child: Text('cancel'),
          onPressed: Navigator.of(context).pop,
        ),
        FlatButton(
          child: Text('Add Item'),
          onPressed: () {
            final todo = new ToDO(controller.value.text);
            Navigator.of(context).pop(todo);
          },
        )
      ],
    );
  }
}
