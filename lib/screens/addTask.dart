import 'package:flutter/material.dart';

class AddTaskScreen extends StatefulWidget {
  final Function addNewTask;
  AddTaskScreen(this.addNewTask);

  @override
  _AddTaskScreenState createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  String inputValue;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Add new task',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 30.0,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 5.0,
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (value) {
              inputValue = value;
            },
          ),
          SizedBox(
            height: 33.0,
          ),
          FlatButton(
            color: Colors.lightBlueAccent,
            child: Container(
              width: 90.0,
              child: Text(
                'Add',
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
            onPressed: () {
              this.widget.addNewTask(inputValue);
            },
          )
        ],
      ),
    );
  }
}
