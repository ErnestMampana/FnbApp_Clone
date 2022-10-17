import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fnb_clone/screens/home_screen.dart';
import 'package:fnb_clone/widgets/drawer.dart';
import 'package:fnb_clone/widgets/icon_option.dart';

class TransfersScreen extends StatelessWidget {
  const TransfersScreen({super.key});

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
          'Tranfers',
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height: 225,
                width: 400,
                //margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                decoration: BoxDecoration(
                  color: const Color(0xff7c94b6),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.5), BlendMode.darken),
                    image: const AssetImage(
                      'assets/settings.jpeg',
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
                            'Transfers',
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
                            'Move money seamlessly',
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
                        Icons.person_pin,
                        size: 50,
                        color: Colors.orange,
                      ),
                      title: 'Transfers'),
                  GestureDetector(
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //       builder: (context) => const CallCentreScreen()),
                      // );
                    },
                    child: const IconBuilder(
                        color: Color.fromARGB(255, 20, 204, 201),
                        icon: Icon(
                          Icons.lock_open,
                          size: 50,
                          color: Colors.white,
                        ),
                        title: 'Scheduled transfers'),
                  ),
                  const IconBuilder(
                      color: Color.fromARGB(255, 20, 204, 201),
                      icon: Icon(
                        Icons.password,
                        size: 50,
                        color: Colors.white,
                      ),
                      title: 'Transfer History'),
                  GestureDetector(
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //       builder: (context) => const ComplemtsScreen()),
                      // );
                    },
                    child: const IconBuilder(
                        color: Color.fromARGB(255, 20, 204, 201),
                        icon: Icon(
                          Icons.transform_outlined,
                          size: 50,
                          color: Colors.orange,
                        ),
                        title: 'Global Transfers'),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
