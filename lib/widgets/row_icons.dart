import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class RowIconsWidget extends StatelessWidget {
  final IconData iconOne;
  final IconData iconTwo;
  final IconData iconThree;
  final IconData iconFour;
  final String descriptionOne;
  final String descriptionTwo;
  final String descriptionThree;
  final String descriptionFour;
  const RowIconsWidget({
    super.key,
    required this.iconOne,
    required this.iconTwo,
    required this.iconThree,
    required this.iconFour,
    required this.descriptionOne,
    required this.descriptionTwo,
    required this.descriptionThree,
    required this.descriptionFour,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildContainer(iconOne, descriptionOne),
          buildContainer(iconTwo, descriptionTwo),
          buildContainer(iconThree, descriptionThree),
          buildContainer(iconFour, descriptionFour),
        ],
      ),
    );
  }
}

Widget buildContainer(IconData icon, String description) {
  return SizedBox(
    width: 70,
    height: 120,
    child: Column(
      children: [
        Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 251, 249, 249),
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
            border: Border.all(
              color: Colors.grey,
            ),
          ),
          child: Center(
            child: Icon(
              icon,
              size: 40,
              color: const Color.fromARGB(255, 20, 204, 201),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Text(description),
        ),
      ],
    ),
  );
}
