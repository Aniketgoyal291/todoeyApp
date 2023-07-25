import 'package:flutter/material.dart';

import 'task.dart';

class ListProvider extends ChangeNotifier {
  List<Task> tasks = [];

  void addTask(String addtasktitle) {
    tasks.add(Task(name: addtasktitle));
    notifyListeners();
  }

  void removeTask(int index) {
    tasks.removeAt(index);
    notifyListeners();
  }
}
