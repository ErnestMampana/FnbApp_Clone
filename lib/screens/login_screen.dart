import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fnb_clone/screens/accounts_screen.dart';
import 'package:fnb_clone/screens/home_screen.dart';
import 'package:fnb_clone/widgets/drawer.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: CustomDrawer(),
      appBar: AppBar(
        actions: const [
          Icon(Icons.chat_bubble_outline),
          SizedBox(
            width: 10,
          ),
        ],
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'FNB',
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
      body: Column(
        children: [
          Image.asset('assets/barner.webp'),
          const Text(
            'Hi Modige Mohlala, please enter your FNB App\npassword to login',
            style: TextStyle(
              color: Color.fromARGB(255, 20, 204, 201),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
            child: TextFormField(
              decoration: const InputDecoration(
                  // focusColor: Color.fromARGB(255, 20, 204, 201),
                  // fillColor: Color.fromARGB(255, 20, 204, 201),
                  border: UnderlineInputBorder(),
                  labelText: 'Password',
                  suffixIcon: Icon(Icons.remove_red_eye)),
            ),
          ),
          const SizedBox(
            height: 70,
          ),
          SizedBox(
            width: 330,
            child: OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AccountsScreen()),
                );
              },
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.orange),
                //shadowColor: Colors.fromARGB(255, 165, 127, 124),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              child: const Text(
                'Login',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          // const SizedBox(
          //   height: 10,
          // ),
          SizedBox(
            width: 330,
            child: OutlinedButton(
              onPressed: () {},
              style: ButtonStyle(
                //shadowColor: Colors.fromARGB(255, 165, 127, 124),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              child: const Text(
                'Forgot Password',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Column(
              children: [
                Container(
                  height: 75,
                  width: 75,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromARGB(255, 20, 204, 201),
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(50),
                    ),
                  ),
                  child: const Icon(
                    Icons.fingerprint,
                    size: 60,
                    color: Color.fromARGB(255, 20, 204, 201),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text('Biometric\n    Login')
              ],
            ),
          ),
        ],
      ),
    );
  }
}
