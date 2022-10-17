import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fnb_clone/screens/home_screen.dart';
import 'package:fnb_clone/widgets/account_tile.dart';
import 'package:fnb_clone/widgets/drawer.dart';

class AccountsScreen extends StatefulWidget {
  const AccountsScreen({super.key});

  @override
  State<AccountsScreen> createState() => _AccountsScreenState();
}

class _AccountsScreenState extends State<AccountsScreen> {
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
          'Accounts',
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
              const Icon(Icons.refresh)
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Row(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(70, 0, 0, 0),
                child: SizedBox(
                  height: 40,
                  width: 40,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                    height: 75,
                    child: const Center(
                        child: Icon(
                      Icons.add,
                      color: Colors.white,
                    )),
                  ),
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              const Text('Add Account')
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          const AccountTile(
            accountType: 'Easy Account',
            availBalance: 2.494,
            balace: 2.494,
            outerBalance: 2.494,
            title: 'Day to day',
          ),
          const SizedBox(
            height: 30,
          ),
          const AccountTile(
            accountType: 'Savings Account',
            availBalance: 494,
            balace: 494,
            outerBalance: 494,
            title: 'Investments',
          ),
          const SizedBox(
            height: 30,
          ),
          const AccountTile(
            accountType: 'Personal Loan',
            availBalance: 0,
            balace: -2.418,
            outerBalance: 494,
            title: 'Loans',
          )
        ],
      ),
    );
  }
}
