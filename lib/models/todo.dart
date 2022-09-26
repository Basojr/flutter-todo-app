import 'package:flutter/material.dart';

class ToDo extends StatelessWidget {
  final String todotext;
  final bool textCompleted;
  Function(bool?)? onchnaged;

  ToDo(
      {super.key,
      required this.todotext,
      required this.textCompleted,
      required this.onchnaged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.deepPurple,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Checkbox(
              value: textCompleted,
              onChanged: onchnaged,
              activeColor: Colors.black,
            ),
            Text(
              todotext,
              style: TextStyle(
                  fontSize: 15,
                  decoration: textCompleted
                      ? TextDecoration.lineThrough
                      : TextDecoration.none),
            ),
          ],
        ),
      ),
    );
  }
}
