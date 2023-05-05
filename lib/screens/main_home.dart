import 'package:akar_icons_flutter/akar_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fnb_clone/backend/LookUp.dart';
import 'package:fnb_clone/screens/accounts_screen.dart';
import 'package:fnb_clone/screens/contact_screen.dart';
import 'package:fnb_clone/screens/home_screen.dart';
import 'package:fnb_clone/screens/login_screen.dart';
import 'package:fnb_clone/screens/my_profile_request.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:remixicon/remixicon.dart';

// ignore: must_be_immutable
class MainHome extends StatelessWidget {
  MainHome({super.key});

  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  bool isLogged = false;

  List<Widget> _buildScreens() {
    return [
      const HomeScreen(),
      isLogged ? const AccountsScreen() : const LoginScreen(),
      const ContactUsScreen(),
      const MyProfileRequest(),
      const AccountsScreen()
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: LookUp.isDarkMode
          ? Colors.black
          : Colors.white, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows:
          true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: LookUp.isDarkMode ? Colors.black : Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style3, // Choose the nav bar style with this property.
    );
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.home),
        title: ("Home"),
        activeColorPrimary:
            LookUp.isDarkMode ? Colors.white : CupertinoColors.black,
        inactiveColorPrimary:
            LookUp.isDarkMode ? Colors.white : CupertinoColors.black,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.creditcard),
        title: ("Bank"),
        activeColorPrimary:
            LookUp.isDarkMode ? Colors.white : CupertinoColors.black,
        inactiveColorPrimary:
            LookUp.isDarkMode ? Colors.white : CupertinoColors.black,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(
            AkarIcons.chat_bubble), //FluentSystemIcons.ic_fluent_chat_regular),
        title: ("Message"),
        activeColorPrimary:
            LookUp.isDarkMode ? Colors.white : CupertinoColors.black,
        inactiveColorPrimary:
            LookUp.isDarkMode ? Colors.white : CupertinoColors.black,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.profile_circled),
        title: ("My profile"),
        activeColorPrimary:
            LookUp.isDarkMode ? Colors.white : CupertinoColors.black,
        inactiveColorPrimary:
            LookUp.isDarkMode ? Colors.white : CupertinoColors.black,
      ),
      PersistentBottomNavBarItem(
        icon: GestureDetector(
          onTap: () {
            print("================================= : " +
                _controller.index.toString());
          },
          child: const Icon(Remix.menu_5_line),
        ),
        title: ("Menu"),
        activeColorPrimary:
            LookUp.isDarkMode ? Colors.white : CupertinoColors.black,
        inactiveColorPrimary:
            LookUp.isDarkMode ? Colors.white : CupertinoColors.black,
      ),
    ];
  }
}
