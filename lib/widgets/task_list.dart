import 'package:flutter/material.dart';
import 'taskTile.dart';
import 'package:todoey_flutter/models/tasks.dart';
import 'package:todoey_flutter/models/task_data.dart';
import 'package:provider/provider.dart';

class TaskList extends StatefulWidget {
    @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {


  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return  ListView.builder(
        itemBuilder: (context, index) {
          final task = taskData.tasks[index];
        return TaskTile(
          isChecked: task.isDone,
          taskTitle: task.name,
          toggleCheckBoxState: (newValue) {
            taskData.toggleCheckBox(task);
          },
          longPressCallBack: () {
            taskData.removeTask(task);
          },
        );
      },
      itemCount: taskData.tasksLength,
      );
      },
          
    );
  }
}
