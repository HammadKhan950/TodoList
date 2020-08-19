import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoey/model/task.dart';
import 'dart:collection';
import 'package:provider/provider.dart';

class TaskData extends ChangeNotifier {
  String newTaskTitle;
  List<Task> _tasks = [
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  void changeString(String newString) {
    _tasks.add(Task(name: newString));
    notifyListeners();
  }

  int get taskCount {
    return _tasks.length;
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(index) {
    _tasks.removeAt(index);
    notifyListeners();
  }
}
