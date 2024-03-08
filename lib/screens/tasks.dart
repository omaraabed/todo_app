import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:date_picker_timeline/extra/color.dart';
import 'package:flutter/material.dart';

import '../widgets/task_item.dart';

class TaskTab extends StatefulWidget {
  const TaskTab({Key? key}) : super(key: key);

  @override
  State<TaskTab> createState() => _TaskTabState();
}

class _TaskTabState extends State<TaskTab> {
  DateTime data = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Container(
        color: Color(0xffDFECDB),
        child: Column(
          children: <Widget>[
            DatePicker(
              DateTime.now(),
              initialSelectedDate: DateTime.now(),
              selectionColor: Color(0xff5D9CEC),
              height: 110,
              selectedTextColor: Colors.white,
              onDateChange: (newdate) {
                // New date selected
                setState(() {
                  data = newdate;
                });
              },
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return TaskItem();
                },
                itemCount: 10,
              ),
            )
          ],
        ),
      ),
    );
  }
}
