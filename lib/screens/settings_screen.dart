import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fnb_clone/screens/appPin_screen.dart';
import 'package:fnb_clone/screens/biometric_screen.dart';
import 'package:fnb_clone/screens/change_password_screen.dart';
import 'package:fnb_clone/screens/daily_limits_screen.dart';
import 'package:fnb_clone/screens/dark_mode_screen.dart';
import 'package:fnb_clone/screens/home_screen.dart';
import 'package:fnb_clone/screens/myUsername_screen.dart';
import 'package:fnb_clone/screens/my_devices_screen.dart';
import 'package:fnb_clone/screens/partner_wallet_screen.dart';
import 'package:fnb_clone/screens/watch_screen.dart';
import 'package:fnb_clone/widgets/drawer.dart';
import 'package:fnb_clone/widgets/icon_option.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

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
          'Settings',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
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
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: GridView.count(
                crossAxisCount: 4,
                crossAxisSpacing: 25.0,
                //mainAxisSpacing: 100.0,
                childAspectRatio: 1 / 2,
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                children: [
                  IconBuilder(
                    icon: Icons.person_pin,
                    title: 'My Username',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MyUserNameScreen(),
                        ),
                      );
                    },
                  ),
                  IconBuilder(
                    icon: Icons.lock_open,
                    title: 'Change Password',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ChangePasswordScreen(),
                        ),
                      );
                    },
                  ),
                  IconBuilder(
                    icon: Icons.password,
                    title: 'Add Pin',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AppPinScreen(),
                        ),
                      );
                    },
                  ),
                  IconBuilder(
                    icon: Icons.transform_outlined,
                    title: 'Daily Limits',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LimitsScreen(),
                        ),
                      );
                    },
                  ),
                  IconBuilder(
                    icon: Icons.fingerprint,
                    title: 'Biometric',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const BiometricScreen(),
                        ),
                      );
                    },
                  ),
                   IconBuilder(
                    icon: Icons.phone_android,
                    title: 'My device',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MyDevices(),
                        ),
                      );
                    },
                  ),
                  const IconBuilder(
                    icon: Icons.message,
                    title: 'Messages',
                  ),
                   IconBuilder(
                    icon: Icons.watch_rounded,
                    title: 'Watch App',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => WatchAppScreen(),
                        ),
                      );
                    },
                  ),
                  const IconBuilder(
                    icon: Icons.account_balance_wallet,
                    title: 'Default Account',
                  ),
                  const IconBuilder(
                    icon: Icons.mobile_screen_share,
                    title: 'FNB Pay',
                  ),
                  const IconBuilder(
                    icon: Icons.done_sharp,
                    title: 'DebitCeck Mandates',
                  ),
                  const IconBuilder(
                    icon: Icons.settings_applications_rounded,
                    title: 'My Vault',
                  ),
                  IconBuilder(
                    icon: BootstrapIcons.moon_stars,
                    title: 'Dark Mode',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DarkModeScreen(),
                        ),
                      );
                    },
                  ),
                  const IconBuilder(
                    icon: Icons.person_off_sharp,
                    title: 'Block my profile',
                  ),
                  const IconBuilder(
                    icon: Icons.person_add_rounded,
                    title: 'Manage Profiles',
                  ),
                  const IconBuilder(
                    icon: Icons.phonelink_ring_rounded,
                    title: 'Cellphone Banking',
                  ),
                  const IconBuilder(
                    icon: Icons.visibility_off,
                    title: 'Visible accounts',
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
