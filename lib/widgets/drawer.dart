import 'package:flutter/material.dart';
import 'package:fnb_clone/screens/accounts_screen.dart';
import 'package:fnb_clone/screens/contact_screen.dart';
import 'package:fnb_clone/screens/home_screen.dart';
import 'package:fnb_clone/screens/login_screen.dart';
import 'package:fnb_clone/screens/settings_screen.dart';
import 'package:fnb_clone/screens/transfers_screen.dart';
import 'package:fnb_clone/widgets/drawer_icon.dart';

class CustomDrawer extends StatefulWidget {
  @override
  CustomDrawerState createState() => CustomDrawerState();
}

class CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Center(
              child: Column(
                children: [
                  const CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 20, 204, 201),
                    child: Text(
                      'M',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Modige',
                    style: TextStyle(fontSize: 23),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 300,
                    child: OutlinedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        //shadowColor: Colors.fromARGB(255, 165, 127, 124),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                      ),
                      child: const Text(
                        'Switch User',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomeScreen(),
                ),
              );
            },
            child: const DrawerIcon(
              icon: Icon(Icons.home_outlined),
              title: 'Home',
            ),
          ),
          const Divider(
            thickness: 1,
          ),
          GestureDetector(
            onTap: (() {
              //print('object');
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LoginScreen()),
              );
            }),
            child: const DrawerIcon(
              title: 'Accounts',
              icon: Icon(Icons.account_balance_wallet),
            ),
          ),
          const Divider(
            thickness: 1,
          ),
          GestureDetector(
            onTap: () {
              //print('object');
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ContactUsScreen()),
              );
            },
            child: const DrawerIcon(
              title: 'Contact us',
              icon: Icon(Icons.contact_phone_rounded),
            ),
          ),
          const Divider(
            thickness: 1,
          ),
          GestureDetector(
            child: const DrawerIcon(
              title: 'Messages',
              icon: Icon(Icons.message),
            ),
          ),
          const Divider(
            thickness: 1,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const TransfersScreen()),
              );
            },
            child: const DrawerIcon(
              title: 'Transfers',
              icon: Icon(Icons.transform_outlined),
            ),
          ),
          const Divider(
            thickness: 1,
          ),
          GestureDetector(
            child: const DrawerIcon(
              title: 'Payments',
              icon: Icon(Icons.payments),
            ),
          ),
          const Divider(
            thickness: 1,
          ),
          GestureDetector(
            child: const DrawerIcon(
              title: 'Buy',
              icon: Icon(Icons.shopping_basket_rounded),
            ),
          ),
          const Divider(
            thickness: 1,
          ),
          GestureDetector(
            child: const DrawerIcon(
              title: 'Product Shop',
              icon: Icon(Icons.shopping_cart),
            ),
          ),
          const Divider(
            thickness: 1,
          ),
          GestureDetector(
            child: const DrawerIcon(
              title: 'Insurance',
              icon: Icon(Icons.private_connectivity_rounded),
            ),
          ),
          const Divider(
            thickness: 1,
          ),
          GestureDetector(
            child: const DrawerIcon(
              title: 'Connect',
              icon: Icon(Icons.sim_card_outlined),
            ),
          ),
          const Divider(
            thickness: 1,
          ),
          GestureDetector(
            child: const DrawerIcon(
              title: 'Vouchers',
              icon: Icon(Icons.card_giftcard_outlined),
            ),
          ),
          const Divider(
            thickness: 1,
          ),
          GestureDetector(
            child: const DrawerIcon(
              title: 'My Investments',
              icon: Icon(Icons.bar_chart_outlined),
            ),
          ),
          const Divider(
            thickness: 1,
          ),
          GestureDetector(
            child: const DrawerIcon(
              title: 'eBucks',
              icon: Icon(Icons.attach_money),
            ),
          ),
          const Divider(
            thickness: 1,
          ),
          GestureDetector(
            child: const DrawerIcon(
              title: 'nav-igate life',
              icon: Icon(Icons.navigation_outlined),
            ),
          ),
          const Divider(
            thickness: 1,
          ),
          GestureDetector(
            child: const DrawerIcon(
              title: 'eWallet',
              icon: Icon(Icons.wallet_rounded),
            ),
          ),
          const Divider(
            thickness: 1,
          ),
          GestureDetector(
            child: const DrawerIcon(
              title: 'Forex',
              icon: Icon(Icons.stacked_line_chart_outlined),
            ),
          ),
          const Divider(
            thickness: 1,
          ),
          GestureDetector(
            child: const DrawerIcon(
              title: 'Business solutions',
              icon: Icon(Icons.business_center_outlined),
            ),
          ),
          const Divider(
            thickness: 1,
          ),
          GestureDetector(
            child: const DrawerIcon(
              title: 'Information',
              icon: Icon(Icons.info_outline),
            ),
          ),
          const Divider(
            thickness: 1,
          ),
          GestureDetector(
            child: const DrawerIcon(
              title: 'My Profile',
              icon: Icon(Icons.person),
            ),
          ),
          const Divider(
            thickness: 1,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SettingsScreen()),
              );
            },
            child: const DrawerIcon(
              title: 'Settings',
              icon: Icon(Icons.settings),
            ),
          ),
          const Divider(
            thickness: 1,
          ),
          GestureDetector(
            child: const DrawerIcon(
              title: 'LogOff',
              icon: Icon(Icons.power_settings_new_outlined),
            ),
          ),
        ],
      ),
    );
  }
}
