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
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 251, 249, 249),
        title: const Text(
          'My Username',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: false,
      ),

      body: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Username Details',
              style: TextStyle(fontSize: 35),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Current Username',
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: Text(
                '0723568069',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 35.0, bottom: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Text(
                      'New Username',
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 15),
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
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 30),
              child: Text(
                'Your username must be between 8-30 characters long. it must contails :',
                style: TextStyle(fontSize: 20),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 15,
                bottom: 5,
              ),
              child: BulletText(
                text: 'Numbers (0-9)',
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15, bottom: 5),
              child: BulletText(
                text: 'Lower case letters (a-z)',
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15, bottom: 5),
              child: BulletText(
                text: 'Upper case letters (A-Z)',
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15, bottom: 5),
              child: BulletText(
                text: 'Special characters (@.)',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text('You cannot use an ID number as a username'),
          ],
        ),
      ),

      //  ),
    );
  }
}
