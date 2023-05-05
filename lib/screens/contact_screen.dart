import 'package:akar_icons_flutter/akar_icons_flutter.dart';
import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/cupertino.dart';
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              child: Container(
                height: 225,

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
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
              child: GridView.count(
                crossAxisCount: 4,
                crossAxisSpacing: 25.0,
                //mainAxisSpacing: 100.0,
                childAspectRatio: 1 / 2,
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                children: [
                  const IconBuilder(
                    icon: AkarIcons.chat_bubble,
                    title: 'Messages',
                  ),
                  IconBuilder(
                    icon: BootstrapIcons.telephone,
                    title: 'Secure call',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CallCentreScreen(),
                        ),
                      );
                    },
                  ),
                  IconBuilder(
                      icon: CupertinoIcons.chat_bubble_2, title: 'Secure chat'),
                  IconBuilder(
                    icon: BootstrapIcons.hand_thumbs_up,
                    title: 'Complemets',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ComplemtsScreen(),
                        ),
                      );
                    },
                  ),
                  IconBuilder(
                    icon: BootstrapIcons.hand_thumbs_down,
                    title: 'Complaints',
                  ),
                  IconBuilder(
                    icon: BootstrapIcons.question_circle,
                    title: 'Queries/suggestion',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
