import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:date_picker_timeline/extra/color.dart';
import 'package:flutter/material.dart';
import 'package:to_do/model/atsk_model.dart';
import 'package:to_do/shared/network/firebase/firebase.dart';

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
              height: 113,
              selectedTextColor: Colors.white,
              onDateChange: (newdate) {
                // New date selected
                setState(() {
                  data = newdate;
                });
              },
            ),
            StreamBuilder(
              stream: FireBaseFunction.getTaskFirestore(data),
              builder: (context, snapshot) {
                List<TaskModel> tasks =
                    snapshot.data?.docs.map((doc) => doc.data()).toList() ?? [];
                return Expanded(
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return TaskItem(tasks[index]);
                    },
                    itemCount: tasks.length,
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
