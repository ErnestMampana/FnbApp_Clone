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
  String obscureText = "Show";
  bool obscured = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'FNB',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/logo.png',
              fit: BoxFit.fitHeight,
              height: 150,
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
              child: Text(
                'Hi Modige Mohlala, please enter your FNB App password to login',
                style: TextStyle(
                  color: Color.fromARGB(255, 20, 204, 201),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 325,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
                border: Border.all(
                  color: Colors.grey,
                ),
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     SizedBox(
                      width: 250,
                      height: 25,
                      child: TextField(
                        obscureText: obscured,
                        decoration: const InputDecoration(
                          // focusColor: Color.fromARGB(255, 20, 204, 201),
                          // fillColor: Color.fromARGB(255, 20, 204, 201),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                        ), //Icon(Icons.remove_red_eye)),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                      width: 72,
                      child: OutlinedButton(
                        onPressed: () {
                          setState(() {
                            if(obscureText == "Show"){
                              obscureText = "Hide";
                              obscured = false;
                            }else{
                              obscured = true;
                              obscureText = "Show";
                            }
                            
                          });
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            obscureText == "Show"
                                ? Colors.black
                                : const Color.fromRGBO(19, 184, 196, 0.929),
                          ),
                          //shadowColor: Colors.fromARGB(255, 165, 127, 124),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                        child: Text(
                          obscureText,
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
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
                style: OutlinedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(19, 184, 196, 0.929),
                  //shadowColor: Colors.fromARGB(255, 165, 127, 124),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  side: const BorderSide(width: 1.0, color: Colors.black),
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
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(width: 1.0, color: Colors.black),
                  //shadowColor: Colors.fromARGB(255, 165, 127, 124),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
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
                        color: const Color.fromARGB(255, 20, 204, 201),
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
      ),
    );
  }
}
