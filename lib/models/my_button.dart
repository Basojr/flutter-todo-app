import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyButton extends StatelessWidget {
  final String buttontext;
  VoidCallback onpressed;
  MyButton({super.key, required this.buttontext, required this.onpressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onpressed,
      child: Text(buttontext),
      color: Colors.deepPurple[900],
    );
  }
}
