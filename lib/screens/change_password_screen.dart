import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fnb_clone/screens/home_screen.dart';
import 'package:fnb_clone/widgets/drawer.dart';
import 'package:fnb_clone/widgets/username_bullet.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          'Change Password',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: Column(
            children: [
              Row(
                children: const [
                  Text(
                    'PLEASE ENTER A NEW PASSWORD',
                    style: TextStyle(
                      color: Color.fromARGB(255, 20, 204, 201),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                  'You are required to enter a new password\nMake sure this banking password is completely unique and not for any of your app,email or website logins'),
              _passwordText('Old:'),
              _passwordText('New:'),
              _passwordText('Confirm:'),
              const SizedBox(
                height: 30,
              ),
              const Text(
                  'Your Password must be between 7 and 30 characters long'),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Your Password must contain at least 3 of the following character types:',
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                child: Column(
                  children: const [
                    BulletText(
                      text: 'Lower case letters (a-z)',
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    BulletText(
                      text: 'Upper case letters (A-Z)',
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    BulletText(
                      text: 'Numbers (0-9)',
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    BulletText(
                      text: 'Special characters(!@#%&*...)',
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: const [
                  Text('Passwords may not be the same as your username'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _passwordText(String title) {
  return Padding(
    padding: const EdgeInsets.only(top: 20.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0,left:20),
          child: Text(
            title,
            textAlign: TextAlign.left,
            style:const TextStyle(fontSize: 15),
          ),
        ),
        Container(
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
            height: 25,
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
        ),
      ],
    ),
  );
}
