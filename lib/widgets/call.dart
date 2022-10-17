import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CallRow extends StatelessWidget {
  final String title;
  const CallRow({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
          child: SizedBox(
            height: 50,
            width: 50,
            child: Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 20, 204, 201),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              height: 75,
              child: const Center(
                  child: Icon(
                Icons.call,
                size: 40,
                color: Colors.white,
              )),
            ),
          ),
        ),
        const SizedBox(
          width: 30,
        ),
        Column(
          children: [
            Text(title),
            const Text('0876656741'),
          ],
        )
      ],
    );
  }
}
