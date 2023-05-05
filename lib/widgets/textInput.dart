import 'package:flutter/material.dart';

class TextInputContainer extends StatelessWidget {
  const TextInputContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
        border: Border.all(
          color: Colors.grey,
        ),
      ),
      child: SizedBox(
        width: 250,
        height: 35,
        child: TextFormField(
          decoration: const InputDecoration(
            // focusColor: Color.fromARGB(255, 20, 204, 201),
            // fillColor: Color.fromARGB(255, 20, 204, 201),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
            ),
            disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
            ),
          ),
        ),
      ),
    );
  }
}
