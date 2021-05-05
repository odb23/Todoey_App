import 'package:flutter/material.dart';
import 'taskTile.dart';
import 'package:todoey_flutter/models/tasks.dart';

class TaskList extends StatefulWidget {
  final List<Task> taskList;

   TaskList({this.taskList});

  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
      return TaskTile(
        isChecked: this.widget.taskList[index].isDone,
        taskTitle: this.widget.taskList[index].name,
        toggleCheckBoxState: (newValue) {
          setState(() {
            this.widget.taskList[index].toggleDone();
          });
        },
      );
    },
    itemCount: this.widget.taskList.length,
    );
  }
}
