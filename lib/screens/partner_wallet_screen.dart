import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fnb_clone/widgets/drawer.dart';

class PartnerWalletScreen extends StatelessWidget {
  const PartnerWalletScreen({super.key});

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
          'Partner wallets',
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
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                height: 150,
                width: 150,
                decoration: const BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.all(
                    Radius.circular(100),
                  ),
                ),
                child: const Center(
                  child: Icon(
                    Icons.find_in_page_rounded,
                    size: 120,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              'You dont have any linked wallets',
              style: TextStyle(fontSize: 25),
            ),
          ],
        ),
      ),
    );
  }
}
