import 'package:flutter/material.dart';

/// Finally we converted TaskTile into a stateless widget and lifted the state
/// up for the second time.
class TaskTile extends StatelessWidget {
  TaskTile(
      {required this.isChecked,
      required this.taskTitle,
      required this.toggleCheckBox});

  // we brought this isChecked variable one step up in the widget tree to be
  // able to use it to cross the text when checked.
  final bool isChecked;
  final String taskTitle;
  final void Function(bool?) toggleCheckBox;

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
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: toggleCheckBox,
      ),
    );
  }
}

// class TaskCheckbox extends StatelessWidget {
//   TaskCheckbox({required this.checkboxState, required this.changeState});
//
//   final bool checkboxState;
//   Function changeState;
//
//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(
//       activeColor: Colors.lightBlueAccent,
//       value: checkboxState,
//       onChanged: (newValue) {
//         changeState(newValue);
//       },
//     );
//   }
// }
