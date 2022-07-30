import 'package:flutter/material.dart';

class MyOutlinedButton extends StatelessWidget {
  final VoidCallback pressed;
  final IconData icon;
  final double iconSize;
  final String text;
  final double textSize;

  const MyOutlinedButton({
    required this.pressed,
    required this.icon,
    this.iconSize = 25,
    required this.text,
    this.textSize = 25,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: pressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: iconSize,
          ),
          const SizedBox(width: 5),
          Text(
            text,
            style: TextStyle(fontSize: textSize),
          )
        ],
      ),
    );
  }
}
