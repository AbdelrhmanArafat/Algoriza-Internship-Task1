import 'package:flutter/material.dart';

class MyElevatedButton extends StatelessWidget {
  final VoidCallback pressed;
  final Color? backgroundColor;
  final double? width;
  final double height;
  final String text;
  final Color textColor;
  final double textSize;

  const MyElevatedButton({
    required this.pressed,
    this.backgroundColor,
    this.width,
    this.height = 52,
    required this.text,
    this.textColor = Colors.white,
    this.textSize = 30,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: backgroundColor,
      ),
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: pressed,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: textSize,
            ),
          ),
        ),
      ),
    );
  }
}
