import 'package:flutter/material.dart';

class MyElevatedButton extends StatelessWidget {
  final VoidCallback pressed;
  final Color backgroundColor;
  final double width;
  final double height;
  final String text;
  final Color textColor;
  final double textSize;

  const MyElevatedButton({
    required this.pressed,
    this.backgroundColor = Colors.blue,
    this.width = double.infinity,
    this.height = 52,
    required this.text,
    this.textColor = Colors.white,
    this.textSize = 30,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: pressed,
        child: Container(
          color: backgroundColor,
          width: width,
          height: height,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: TextStyle(
                  color: textColor,
                  fontSize: textSize,
                ),
              ),
            ],
          ),
        ));
  }
}
