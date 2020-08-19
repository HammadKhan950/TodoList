import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/widgets/task_tile.dart';
import 'package:todoey/model/task_data.dart';


class TasksList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (BuildContext context, TaskData taskData, Widget child) {
        return   ListView.builder(
          itemBuilder: (context, index) {
            return TaskTitle(
          taskData.tasks[index].name,
              taskData.tasks[index].isDone,
                  (checkboxState) {
            taskData.updateTask(taskData.tasks[index]);
              },
              index,
            );
          },
          itemCount: taskData.taskCount,
        );
      },

    );
  }
}
