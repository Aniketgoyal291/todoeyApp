import 'package:flutter/material.dart';
import 'tasks_screen.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addTaskCallback;

  const AddTaskScreen({super.key, required this.addTaskCallback});

  @override
  Widget build(BuildContext context) {
    late String newTaskTitle;

    return Container(
      color: const Color(0xff757575),
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          color: Colors.white,
        ),
        child: Column(
          children: [
            const Text(
              'Add Task',
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 30.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            TextField(
              autofocus: true, // automatically bring up keyboard
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.black,
              ),
              onChanged: (newValue) {
                newTaskTitle = newValue;
              },
            ),
            const SizedBox(height: 10),
            TextButton(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.lightBlueAccent,
                ),
                alignment: Alignment.center,
                height: 40,
                width: double.infinity,
                child: const Text(
                  'ADD',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              onPressed: () {
                addTaskCallback(newTaskTitle);
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
