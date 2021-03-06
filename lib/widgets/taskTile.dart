import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function toggleCheckBoxState;
  final Function longPressCallBack;

  TaskTile({this.taskTitle, this.isChecked, this.toggleCheckBoxState, this.longPressCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: toggleCheckBoxState,
      ),
      onLongPress: longPressCallBack,
    );
  }
}

// class TaskCheckBox extends StatelessWidget {
//   final bool checkBoxstate;
//   final Function toggleCheckBoxState;

//   TaskCheckBox({this.checkBoxstate, this.toggleCheckBoxState});

//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(
//       value: checkBoxstate,
//       onChanged: toggleCheckBoxState,
//     );
//   }
// }
