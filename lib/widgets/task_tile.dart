import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  // we brought this isChecked variable one step up in the widget tree to be
  // able to use it to cross the text when checked.
  bool isChecked = false;

  // we are going to pass this function directly to TaskCheckBox.
  // void changeState(bool newValue) {
  //   setState(() {
  //     isChecked = newValue;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'This is a task',
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: TaskCheckbox(
        isChecked,
        (bool newValue) {
          setState(() {
            isChecked = newValue;
          });
        },
      ),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  TaskCheckbox(this.checkboxState, this.changeState);

  final bool checkboxState;
  Function changeState;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkboxState,
      onChanged: (newValue) {
        changeState(newValue);
      },
    );
  }
}
