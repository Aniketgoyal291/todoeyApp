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
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        return TaskTile(
          isChecked: tasks[index].isDone,
          taskTitle: tasks[index].name,
          toggleCheckBox: (bool? newValue) {
            setState(() {
              tasks[index].isDone = newValue!;
            });
          },
        );
      },
    );
  }
}
