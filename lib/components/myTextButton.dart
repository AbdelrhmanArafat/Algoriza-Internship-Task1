import 'package:flutter/material.dart';

class MyTextButton extends StatelessWidget {
  final VoidCallback pressed;
  final String text;
  final double textSize;
  final IconData icon;
  final Color iconColor;
  final double iconSize;

  const MyTextButton({
    required this.pressed,
    required this.text,
    this.textSize = 20,
    this.icon = Icons.question_mark,
    this.iconColor = Colors.blue,
    this.iconSize = 15,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: pressed,
        child: Row(
          children: [
            Text(
              text,
              style: TextStyle(fontSize: textSize),
            ),
            Icon(
              icon,
              color: iconColor,
              size: iconSize,
            )
          ],
        ));
  }
}
