import 'package:flutter/material.dart';

class MyDivider extends StatelessWidget {
  const MyDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 150,
          height: 1,
          color: Colors.grey[300],
        ),
        Column(
          children: const [
            Text(
              'or',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 25,
              ),
            ),
          ],
        ),
        Container(
          width: 150,
          height: 1,
          color: Colors.grey[300],
        ),
      ],
    );
  }
}
