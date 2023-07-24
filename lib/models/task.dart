class Task {
  Task({required this.name, this.isDone = false});

  final String name;
  bool isDone;

  void toggleIsDone() {
    isDone = !isDone;
  }

  // we are creating this file for the model of our project, it is the structure
  // that will store the information of individual tasks.
}
