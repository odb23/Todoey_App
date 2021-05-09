import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';
import 'package:todoey_flutter/models/tasks.dart';


// ignore: must_be_immutable
class AddTaskScreen extends StatelessWidget {
 String taskValue;


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "Add Text",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.lightBlueAccent,
                ),
              ),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  taskValue = value;
                },
              ),
              FlatButton(
                onPressed: () {
                  
                Provider.of<TaskData>(context).addTask(Task(name: taskValue));
                Navigator.pop(context);
              
                },
                color: Colors.lightBlueAccent,
                child: Text('Add'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
