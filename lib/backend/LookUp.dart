import 'package:akar_icons_flutter/akar_icons_flutter.dart';
import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fnb_clone/backend/models/account.dart';
import 'package:fnb_clone/backend/models/profile_tile.dart';
import 'package:icofont_flutter/icofont_flutter.dart';
import 'package:icon_forest/mbi_combi.dart';
import 'package:justino_icons/justino_icons.dart';

class LookUp {
  static bool isAccLogged = false;
  List<Map<String, dynamic>> images = [
    {
      "icon": const Icon(
        CupertinoIcons.lock,
        size: 40,
        weight: 800,
        color: Colors.orange,
      ),
      "description": 'Login',
    },
    {
      "icon": const Icon(
        IcoFontIcons.pay,
        size: 50,
        color: Color.fromARGB(255, 20, 204, 201),
      ),
      "description": 'Pay',
    },
    {
      "icon": const Icon(
        CupertinoIcons.bag,
        size: 40,
        color: Color.fromARGB(255, 20, 204, 201),
      ),
      "description": 'Buy',
    },
    {
      "icon": const Icon(
        CupertinoIcons.location_solid,
        size: 40,
        color: Color.fromARGB(255, 20, 204, 201),
      ),
      "description": 'GuardMe',
    },
    {
      "icon": Transform.rotate(
        angle: 90, // * math.pi / 180,
        child: const Icon(
          CupertinoIcons.arrow_right_arrow_left,
          size: 40,
          color: Color.fromARGB(255, 20, 204, 201),
        ),
      ),
      "description": 'Transfer',
    },
    {
      "icon": const Icon(MbiCombiIcons.search),
      "description": 'My Offers',
    },
    {
      "icon": const Icon(
        CupertinoIcons.shopping_cart,
        size: 40,
        color: Colors.orange,
      ),
      "description": 'Product Shop',
    },
    {
      "icon": const Icon(
        CupertinoIcons.money_dollar,
        size: 40,
        color: Color.fromARGB(255, 20, 204, 201),
      ),
      "description": 'Temoprary Relief Solution',
    },
    {
      "icon": const Icon(
        CupertinoIcons.info,
        size: 40,
        weight: 800,
        color: Color.fromARGB(255, 20, 204, 201),
      ),
      "description": 'Information',
    },
    {
      "icon": const Icon(
        AkarIcons.chat_bubble,
        size: 40,
        weight: 800,
        color: Color.fromARGB(255, 20, 204, 201),
      ),
      "description": 'Message',
    },
    {
      "icon": Icon(
        JustinoIcons.getByName('tvApp'),
        size: 40,
        weight: 800,
        color: const Color.fromARGB(255, 20, 204, 201),
      ),
      "description": 'TV Hub',
    },
    {
      "icon": const Icon(
        CupertinoIcons.chat_bubble_2,
        size: 40,
        weight: 800,
        color: Color.fromARGB(255, 20, 204, 201),
      ),
      "description": 'Secure chat',
    }
  ];

  List<Account> accounts = [
    Account(
      accountType: 'Easy Account',
      availableBalance: 23541.45,
      balance: 22954.88,
    ),
    Account(
      accountType: 'Savings Account',
      availableBalance: 23541.45,
      balance: 22954.88,
    ),
    Account(
      accountType: 'Personal Loan',
      availableBalance: 50.0,
      balance: -2354.88,
    ),
  ];

  List<ProfileTile> profileTiles = [
    ProfileTile(
      tileIcon: CupertinoIcons.profile_circled,
      tileDescription: 'Update your personal details safely',
      tileName: 'My profile',
    ),
    ProfileTile(
      tileIcon: BootstrapIcons.arrow_repeat,
      tileDescription: 'Move easily between baking profiles',
      tileName: 'Switch user',
    ),
    ProfileTile(
      tileIcon: CupertinoIcons.gear,
      tileDescription: 'Personalise your app, your way!',
      tileName: 'Settings',
    ),
  ];

  static bool isDarkMode = false;
}
