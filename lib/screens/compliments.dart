import 'package:flutter/material.dart';
import 'package:fnb_clone/widgets/drawer.dart';
import 'package:fnb_clone/widgets/textInput.dart';

class ComplemtsScreen extends StatelessWidget {
  const ComplemtsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        actions: const [
          Icon(Icons.search_rounded),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.chat_bubble_outline),
          SizedBox(
            width: 10,
          ),
        ],
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 251, 249, 249),
        title: const Text(
          'Complements',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'We love hearing when we get it right. Please go ahead!',
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              'Complements details',
              style: TextStyle(
                color: Color.fromARGB(255, 20, 204, 201),
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('Name and Surname'),
                Text(
                  'Modige Mohlala',
                  textAlign: TextAlign.left,
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            TextInputContainer(),
          ],
        ),
      ),
    );
  }
}
