import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task_data.dart';
import 'task_tile.dart';
import 'package:provider/provider.dart';

class TasksList extends StatefulWidget {
  const TasksList({super.key});

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  // List<Task> tasks = [
  @override
  Widget build(BuildContext context) {
    return Consumer<ListProvider>(
      builder: (context, listProvider, child) => ListView.builder(
        itemCount: listProvider.tasks.length,
        itemBuilder: (context, index) {
          return TaskTile(
            isChecked: listProvider.tasks[index].isDone,
            taskTitle: listProvider.tasks[index].name,
            toggleCheckBox: (newValue) {
              if (newValue == false) {
                setState(() {
                  listProvider.tasks[index].toggleIsDone();
                });
              } else {
                setState(() {
                  listProvider.removeTask(index);
                });
              }
            },
          );
        },
      ),
    );
  }
}
