import 'package:flutter/material.dart';
import 'package:todoapp/models/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onsave;
  VoidCallback ondelete;
  DialogBox(
      {super.key,
      required this.controller,
      required this.ondelete,
      required this.onsave});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.deepPurple,
      content: Container(
        height: 120,
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Add new task'),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MyButton(
                  buttontext: 'Save',
                  onpressed: onsave,
                ),
                SizedBox(
                  width: 10,
                ),
                MyButton(buttontext: 'Delete', onpressed: ondelete),
              ],
            )
          ],
        ),
      ),
    );
  }
}
