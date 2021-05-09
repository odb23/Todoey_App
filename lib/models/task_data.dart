import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'tasks.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: "Buy milk"),
    Task(name: "Buy eggs"),
    Task(name: "Buy bread")
  ];

  UnmodifiableListView<Task> get tasks => UnmodifiableListView(_tasks);

  int get tasksLength => _tasks.length;

  void addTask(Task task) {
    _tasks.add(task);
    notifyListeners();
  }

  void toggleCheckBox(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void removeTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
