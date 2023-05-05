import 'package:bootstrap_icons/bootstrap_icons.dart';
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
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 251, 249, 249),
                borderRadius: const BorderRadius.all(
                  Radius.circular(50),
                ),
                border: Border.all(
                  color: Colors.grey,
                ),
              ),
              height: 75,
              child: const Center(
                  child: Icon(
                BootstrapIcons.telephone,
                size: 20,
                color: Color.fromARGB(255, 20, 204, 201),
              )),
            ),
          ),
        ),
        const SizedBox(
          width: 30,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title),
            const Text('0876656741'),
          ],
        )
      ],
    );
  }
}
