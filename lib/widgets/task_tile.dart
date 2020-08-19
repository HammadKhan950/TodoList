import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/model/task_data.dart';

class TaskTitle extends StatelessWidget {
  final bool isChecked;

  final String taskTitle;
  final Function checkboxCallback;
  final int index;

  TaskTitle(this.taskTitle, this.isChecked,this.checkboxCallback,this.index);


  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress:(){
        if(isChecked) {
          Provider.of<TaskData>(context, listen: false).deleteTask(index);
        }
      },
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}




