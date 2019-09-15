import 'package:flutter/material.dart';
import 'package:todoey/constants.dart';

class TaskTile extends StatelessWidget {
  final String title;
  final bool isChecked;
  final Function checkboxCallback;
  final Function longPressCallback;

  TaskTile({
    this.title,
    this.isChecked,
    this.checkboxCallback,
    this.longPressCallback,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(
        title,
        style: isChecked ? kTaskDoneTextStyle : kTaskTextStyle,
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}
