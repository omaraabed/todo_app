import 'package:date_picker_timeline/extra/color.dart';
import 'package:flutter/material.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: Colors.transparent)),
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 100,
              width: 5,
              color: Color(0xff5D9CEC),
              margin: EdgeInsets.only(left: 20, top: 10, bottom: 10),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * .05,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Task Title',
                    style: TextStyle(
                        color: Color(0xff5D9CEC),
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
                Text('Task Description',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontWeight: FontWeight.w400)),
                // Spacer(),
              ],
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xff5D9CEC),
                    borderRadius: BorderRadius.circular(20)),
                width: 60,
                height: 30,
                child: Icon(
                  Icons.done,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
