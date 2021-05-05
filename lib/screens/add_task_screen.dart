import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AddTaskScreen extends StatelessWidget {
 final Function addTask; 
 String taskValue;

 AddTaskScreen({this.addTask});

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
                  addTask(taskValue);
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
