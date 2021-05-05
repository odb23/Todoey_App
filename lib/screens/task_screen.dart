import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/task_list.dart';
import 'package:todoey_flutter/screens/add_task_screen.dart';
import 'package:todoey_flutter/models/tasks.dart';

class TasksScreen extends StatefulWidget {
  @override
  _TasksScreenState createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  String dataTitle;
  List<Task> tasks = [
    Task(name: "Buy milk"),
    Task(name: "Buy eggs"),
    Task(name: "Buy bread")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.lightBlueAccent,
          child: Icon(Icons.add),
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (contetxt) => AddTaskScreen( addTask: () {
                setState(() {
                  tasks.add(Task(name: dataTitle));
                });
                Navigator.pop(context);
              }),
            );
          }),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 60, bottom: 30, right: 30, left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  child: Icon(
                    Icons.list,
                    size: 30,
                    color: Colors.lightBlueAccent,
                  ),
                  backgroundColor: Colors.white,
                  radius: 30,
                ),
                SizedBox(height: 10),
                Text(
                  "Todoey",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 59,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                "${tasks.length} tasks.",
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
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: 300,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
              ),
              child: TaskList(
                taskList: tasks,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
