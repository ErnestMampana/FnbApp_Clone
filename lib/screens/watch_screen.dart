import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fnb_clone/widgets/drawer.dart';

class WatchAppScreen extends StatelessWidget {
  const WatchAppScreen({super.key});

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
          'Watch App',
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
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: const [
                Text(
                  'PAIR WATCH APP',
                  style: TextStyle(
                    color: Color.fromARGB(255, 20, 204, 201),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'You are required to pair your FNB Watch App before you can start banking',
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Step 1: Please launch the Watch App to initiate the pairing process\nStep 2: Select pair on the Phone App\nStep 3: Confirm pairing on the Watch App',
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Security Note: The Watch App is a secondary link to your Phone App. if you de-link your Phone App from your banking profile, the Watch App will also be unpaired.',
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Ensure that your Smart Watch is secured or locked as no password is required to access the Watch App.',
            ),
          ],
        ),
      ),
    );
  }
}
