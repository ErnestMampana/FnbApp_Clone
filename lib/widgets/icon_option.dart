import 'package:flutter/material.dart';

class IconBuilder extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback? onTap;
  const IconBuilder({
    super.key,
    required this.icon,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      //width: 75,
      //margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
      child: Column(
        children: [
          InkWell(
            onTap: onTap,
            child: Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 251, 249, 249),
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
                border: Border.all(
                  color: Colors.grey,
                ),
              ),
              height: 70,
              child: Center(
                child: Icon(
                  icon,
                  color: const Color.fromARGB(255, 20, 204, 201),
                  size: 40,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 13,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
