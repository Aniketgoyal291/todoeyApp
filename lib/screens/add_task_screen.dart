import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff757575),
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          color: Colors.white,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            Text(
              'Add Task',
              style: TextStyle(
                color: Colors.lightBlueAccent.shade100,
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            ),
            const TextField(
              style: TextStyle(
                color: Colors.blue,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text('ADD'),
            )
          ],
        ),
      ),
    );
  }
}
