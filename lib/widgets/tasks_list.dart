import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:todoey_flutter/models/task.dart';

class TasksList extends StatefulWidget {
  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: 'Buy some Milk.'),
    Task(name: 'Buy some Bread.'),
    Task(name: 'Buy some Eggs.'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        TaskTile(
          taskTitle: tasks[0].name,
          isChecked: tasks[0].isDone,
          toggleCheckBox: (bool? newValue) {
            setState(() {
              tasks[0].isDone = newValue!;
            });
          },
        ),
        TaskTile(
          taskTitle: tasks[1].name,
          isChecked: tasks[1].isDone,
          toggleCheckBox: (bool? newValue) {
            setState(() {
              tasks[1].isDone = newValue!;
            });
          },
        ),
        TaskTile(
          taskTitle: tasks[2].name,
          isChecked: tasks[2].isDone,
          toggleCheckBox: (bool? newValue) {
            setState(() {
              tasks[2].isDone = newValue!;
            });
          },
        ),
      ],
    );
  }
}
