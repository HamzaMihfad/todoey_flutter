import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/taskTile.dart';
import 'package:todoey_flutter/models/task.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: 'this is task1'),
    Task(name: 'this is task2'),
    Task(name: 'this is task3'),
    Task(name: 'this is task4'),
    Task(name: 'this is task1'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return TaskTile(
            taskTitle: tasks[index].name,
            isChecked: tasks[index].isDone,
            toggleCheckboxState: (newValue) {
              setState(() {
                tasks[index].toggleIsDone();
              });
            },
          );
        },
        itemCount: tasks.length,
      ),
    );
  }
}
