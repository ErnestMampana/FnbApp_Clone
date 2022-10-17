import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BulletText extends StatelessWidget {
  final String text;
  const BulletText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      //crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 7,
          width: 7,
          decoration: const BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        Expanded(
          child: Text(text),
        ),
      ],
    );
  }
}
