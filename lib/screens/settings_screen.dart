import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fnb_clone/screens/appPin_screen.dart';
import 'package:fnb_clone/screens/biometric_screen.dart';
import 'package:fnb_clone/screens/change_password_screen.dart';
import 'package:fnb_clone/screens/daily_limits_screen.dart';
import 'package:fnb_clone/screens/home_screen.dart';
import 'package:fnb_clone/screens/myUsername_screen.dart';
import 'package:fnb_clone/screens/partner_wallet_screen.dart';
import 'package:fnb_clone/screens/watch_screen.dart';
import 'package:fnb_clone/widgets/drawer.dart';
import 'package:fnb_clone/widgets/icon_option.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

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
          'Settings',
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
                            'Settings',
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
                            'Your app,your way',
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
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MyUserNameScreen()),
                      );
                    },
                    child: const IconBuilder(
                        color: Color.fromARGB(255, 20, 204, 201),
                        icon: Icon(
                          Icons.person_pin,
                          size: 50,
                          color: Colors.orange,
                        ),
                        title: 'My Username'),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ChangePasswordScreen()),
                      );
                    },
                    child: const IconBuilder(
                        color: Color.fromARGB(255, 20, 204, 201),
                        icon: Icon(
                          Icons.lock_open,
                          size: 50,
                          color: Colors.white,
                        ),
                        title: 'Change Password'),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AppPinScreen()),
                      );
                    },
                    child: const IconBuilder(
                        color: Color.fromARGB(255, 20, 204, 201),
                        icon: Icon(
                          Icons.password,
                          size: 50,
                          color: Colors.white,
                        ),
                        title: 'Add Pin'),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LimitsScreen()),
                      );
                    },
                    child: const IconBuilder(
                        color: Color.fromARGB(255, 20, 204, 201),
                        icon: Icon(
                          Icons.transform_outlined,
                          size: 50,
                          color: Colors.orange,
                        ),
                        title: 'Daily Limits'),
                  ),
                ],
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
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const BiometricScreen(),
                        ),
                      );
                    },
                    child: const IconBuilder(
                        color: Color.fromARGB(255, 20, 204, 201),
                        icon: Icon(
                          Icons.fingerprint,
                          size: 50,
                          color: Colors.white,
                        ),
                        title: 'Biometric'),
                  ),
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
                          Icons.phone_android,
                          size: 50,
                          color: Colors.orange,
                        ),
                        title: 'My device'),
                  ),
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
                            builder: (context) => const WatchAppScreen()),
                      );
                    },
                    child: const IconBuilder(
                        color: Color.fromARGB(255, 20, 204, 201),
                        icon: Icon(
                          Icons.watch_rounded,
                          size: 50,
                          color: Colors.orange,
                        ),
                        title: 'Watch App'),
                  ),
                ],
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
                        Icons.account_balance_wallet,
                        size: 50,
                        color: Colors.orange,
                      ),
                      title: 'Default Account'),
                  GestureDetector(
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //       builder: (context) => const CallCentreScreen()),
                      // );
                    },
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const PartnerWalletScreen()),
                        );
                      },
                      child: const IconBuilder(
                          color: Color.fromARGB(255, 20, 204, 201),
                          icon: Icon(
                            Icons.mobile_screen_share,
                            size: 50,
                            color: Colors.white,
                          ),
                          title: 'FNB Pay'),
                    ),
                  ),
                  const IconBuilder(
                      color: Color.fromARGB(255, 20, 204, 201),
                      icon: Icon(
                        Icons.done_sharp,
                        size: 50,
                        color: Colors.white,
                      ),
                      title: 'DebitCeck Mandates'),
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
                          Icons.settings_applications_rounded,
                          size: 50,
                          color: Colors.orange,
                        ),
                        title: 'My Vault'),
                  ),
                ],
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
                        Icons.person_off_sharp,
                        size: 50,
                        color: Colors.orange,
                      ),
                      title: 'Block my profile'),
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
                          Icons.dark_mode,
                          size: 50,
                          color: Colors.white,
                        ),
                        title: 'Dark Mode'),
                  ),
                  const IconBuilder(
                      color: Color.fromARGB(255, 20, 204, 201),
                      icon: Icon(
                        Icons.person_add_rounded,
                        size: 50,
                        color: Colors.white,
                      ),
                      title: 'Manage Profiles'),
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
                          Icons.phonelink_ring_rounded,
                          size: 50,
                          color: Colors.orange,
                        ),
                        title: 'Cellphone Banking'),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Row(
                children: const [
                  IconBuilder(
                      color: Color.fromARGB(255, 20, 204, 201),
                      icon: Icon(
                        Icons.visibility_off,
                        size: 50,
                        color: Colors.white,
                      ),
                      title: 'Visible accounts'),
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
