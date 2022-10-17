import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class IconBuilder extends StatelessWidget {
  final Color color;
  final Icon icon;
  final String title;
  const IconBuilder(
      {super.key,
      required this.color,
      required this.icon,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      width: 75,
      //margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: color,
              borderRadius: const BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            height: 75,
            child: Center(child: icon),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            title,
            textAlign: TextAlign.left,
          ),
        ],
      ),
    );
  }
}
