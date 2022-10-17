import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fnb_clone/screens/home_screen.dart';
import 'package:fnb_clone/widgets/username_bullet.dart';

class AppPinScreen extends StatelessWidget {
  const AppPinScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
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
          'App Pin',
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
          SizedBox(
            height: 120,
            child: Center(
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Container(
                      height: 70,
                      width: 70,
                      //margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                      decoration: const BoxDecoration(
                        color: Color(0xff7c94b6),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'assets/settings.jpeg',
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Please Note',
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
            ),
          ),
          const Divider(
            thickness: 2,
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
            child: Column(
              children: [
                const Text(
                  'You can create a 5-digit PIN that you can use to login into the banking app. having a 5-digit PIN makes it easier to sign in and will replace your current password. Follow these guidlines when creating your new login PIN',
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: const [
                    Text(
                      'PIN guidlines',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const BulletText(
                  text: 'Dont use your ATM card and PIN',
                ),
                const SizedBox(
                  height: 10,
                ),
                const BulletText(
                  text: 'Dont use sequential numbers (e.g 12345,54321)',
                ),
                const SizedBox(
                  height: 10,
                ),
                const BulletText(
                  text:
                      'Dont use a PIN that has 3 or more repetitive number (e.g 12223,11136)',
                ),
                const SizedBox(
                  height: 5,
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 400,
                  child: OutlinedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.orange),
                      //shadowColor: Colors.fromARGB(255, 165, 127, 124),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                    child: const Text(
                      'Create my login PIN',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
