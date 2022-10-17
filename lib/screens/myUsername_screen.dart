import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fnb_clone/screens/home_screen.dart';
import 'package:fnb_clone/widgets/drawer.dart';
import 'package:fnb_clone/widgets/username_bullet.dart';

class MyUserNameScreen extends StatefulWidget {
  const MyUserNameScreen({super.key});

  @override
  State<MyUserNameScreen> createState() => _MyUserNameScreenState();
}

class _MyUserNameScreenState extends State<MyUserNameScreen> {
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
          'My Username',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: false,
      ),
      bottomNavigationBar: Container(
        height: 70,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text(
                  'Back',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomeScreen()),
                  );
                },
                child: const Text(
                  'update',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  children: const [
                    Text(
                      'Username Details',
                      style: TextStyle(fontSize: 35),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: const [
                    Text(
                      'Current Username',
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Text(
                      '0723568069',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'New Username',
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  children: const [
                    Expanded(
                      child: Text(
                          'Your username must be between 8-30 characters long. it must contails :'),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const BulletText(
                  text: 'Numbers (0-9)',
                ),
                const SizedBox(
                  height: 5,
                ),
                const BulletText(
                  text: 'Lower case letters (a-z)',
                ),
                const SizedBox(
                  height: 5,
                ),
                const BulletText(
                  text: 'Upper case letters (A-Z)',
                ),
                const SizedBox(
                  height: 5,
                ),
                const BulletText(
                  text: 'Special characters (@.)',
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: const [
                    Text('You cannot use an ID number as a username'),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
      //  ),
    );
  }
}
