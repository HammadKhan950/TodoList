import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/model/task_data.dart';
import 'package:todoey/screens/add_task_screen.dart';
import 'package:todoey/screens/task_Screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TaskData>(
      create: (BuildContext context) => TaskData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
