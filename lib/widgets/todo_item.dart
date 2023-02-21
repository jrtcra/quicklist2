import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:quicklist2/models/todo.dart';

class ToDoItem extends StatelessWidget {
  final ToDo todo;
  final onToDoChanged;
  final onDeleteItem;

  const ToDoItem(
      {Key? key,
      required this.todo,
      required this.onDeleteItem,
      required this.onToDoChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 20),
        child: ListTile(
          onTap: () {
            onToDoChanged(todo);
          },
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          tileColor: Colors.grey,
          leading: Icon(
              todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
              color: Colors.black),
          title: Text(todo.todoText!,
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  decoration: todo.isDone ? TextDecoration.lineThrough : null)),
          trailing: Container(
              padding: EdgeInsets.all(0),
              margin: EdgeInsets.symmetric(vertical: 12),
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(5)),
              child: IconButton(
                color: Colors.white,
                iconSize: 17,
                icon: Icon(Icons.delete),
                onPressed: (() {
                  onDeleteItem(todo.id);
                }),
              )),
        ));
  }
}
