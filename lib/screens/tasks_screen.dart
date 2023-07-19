import 'package:flutter/material.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<CheckboxListTile> todoList = [];

    return Scaffold(
      backgroundColor: Colors.lightBlueAccent.shade200,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent.shade200,
        onPressed: () {
          todoList.add(
            CheckboxListTile(
              value: false,
              onChanged: (value) {
                value = true;
              },
            ),
          );
        },
        child: const Icon(
          Icons.add,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding:
                const EdgeInsets.only(top: 60, left: 30, right: 30, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.list,
                    color: Colors.lightBlueAccent.shade200,
                    size: 30,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'Todoey',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Text(
                  '12 Tasks',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                ),
              ),
              child: ListView(
                children: todoList,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
