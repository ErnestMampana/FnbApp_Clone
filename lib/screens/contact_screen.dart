import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fnb_clone/screens/call_centre.dart';
import 'package:fnb_clone/screens/compliments.dart';
import 'package:fnb_clone/screens/home_screen.dart';
import 'package:fnb_clone/widgets/drawer.dart';
import 'package:fnb_clone/widgets/icon_option.dart';

class ContactUsScreen extends StatefulWidget {
  const ContactUsScreen({super.key});

  @override
  State<ContactUsScreen> createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        actions: const [
          Icon(Icons.chat_bubble_outline),
        ],
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 251, 249, 249),
        title: const Text(
          'Contact us',
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomeScreen()),
                  );
                },
                child: const Text(
                  'Home',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              height: 225,
              width: 350,
              //margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
              decoration: BoxDecoration(
                color: const Color(0xff7c94b6),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.5), BlendMode.darken),
                  image: const AssetImage(
                    'assets/contactus.jpeg',
                  ),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Contact Us',
                          style: TextStyle(fontSize: 45, color: Colors.white),
                          //style: Theme.of(context).textTheme.display4
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Get in touch with us, safely\nand securely',
                          style: TextStyle(fontSize: 25, color: Colors.white),
                          //style: Theme.of(context).textTheme.display4
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const IconBuilder(
                    color: Color.fromARGB(255, 20, 204, 201),
                    icon: Icon(
                      Icons.message,
                      size: 50,
                      color: Colors.white,
                    ),
                    title: 'Messages'),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CallCentreScreen()),
                    );
                  },
                  child: const IconBuilder(
                      color: Color.fromARGB(255, 20, 204, 201),
                      icon: Icon(
                        Icons.call,
                        size: 50,
                        color: Colors.white,
                      ),
                      title: 'Secure call'),
                ),
                const IconBuilder(
                    color: Color.fromARGB(255, 20, 204, 201),
                    icon: Icon(
                      Icons.chat_bubble_outline_sharp,
                      size: 50,
                      color: Colors.white,
                    ),
                    title: 'Secure chat'),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ComplemtsScreen()),
                    );
                  },
                  child: const IconBuilder(
                      color: Color.fromARGB(255, 20, 204, 201),
                      icon: Icon(
                        Icons.thumb_up_alt,
                        size: 50,
                        color: Colors.white,
                      ),
                      title: 'Complemets'),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Row(
              children: const [
                IconBuilder(
                    color: Color.fromARGB(255, 20, 204, 201),
                    icon: Icon(
                      Icons.thumb_down,
                      size: 50,
                      color: Colors.white,
                    ),
                    title: 'Complaints'),
                SizedBox(
                  width: 25,
                ),
                IconBuilder(
                    color: Color.fromARGB(255, 20, 204, 201),
                    icon: Icon(
                      Icons.question_mark,
                      size: 50,
                      color: Colors.white,
                    ),
                    title: 'Queries/suggestion'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
