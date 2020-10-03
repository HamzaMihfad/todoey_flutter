import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/taskTile.dart';
import 'package:todoey_flutter/models/task.dart';

class TasksList extends StatefulWidget {
  final List<Task> tasks;
  TasksList(this.tasks);
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return TaskTile(
            taskTitle: widget.tasks[index].name,
            isChecked: widget.tasks[index].isDone,
            toggleCheckboxState: (newValue) {
              setState(() {
                widget.tasks[index].toggleIsDone();
              });
            },
          );
        },
        itemCount: widget.tasks.length,
      ),
    );
  }
}
