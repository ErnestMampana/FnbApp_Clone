import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fnb_clone/backend/LookUp.dart';
import 'package:fnb_clone/screens/home_screen.dart';
import 'package:fnb_clone/widgets/call.dart';
import 'package:fnb_clone/widgets/drawer.dart';

class CallCentreScreen extends StatelessWidget {
  const CallCentreScreen({super.key});

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
        iconTheme:  IconThemeData(color:LookUp.isDarkMode ? Colors.white : Colors.black),
        elevation: 0,
        backgroundColor:LookUp.isDarkMode ? Colors.white : const Color.fromARGB(255, 251, 249, 249),
        title:  Text(
          'FNB Call Centre',
          style: TextStyle(color:LookUp.isDarkMode ? Colors.white : Colors.black),
        ),
        centerTitle: false,
      ),
      bottomNavigationBar: Container(
        height: 60,
        color:LookUp.isDarkMode ? Colors.black : Colors.white,
        child: Column(
          children: [
            SizedBox(
              width: 350,
              child: OutlinedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.orange),
                  //shadowColor: Colors.fromARGB(255, 165, 127, 124),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
                onPressed: () {},
                child:  Text(
                  'Secure Chat',
                  style: TextStyle(color: LookUp.isDarkMode ? Colors.black : Colors.white),
                ),
              ),
            ),
            
          ],
        ),
      ),
      body: ListView(children: const [
        SizedBox(
          height: 20,
        ),
        CallRow(
          title: 'FNB App Call Centre',
        ),
        Divider(
          thickness: 1,
        ),
        CallRow(
          title: 'FNB Savings and Investments',
        ),
        Divider(
          thickness: 1,
        ),
        CallRow(
          title: 'Gold Service Suite',
        ),
        Divider(
          thickness: 1,
        ),
        CallRow(
          title: 'AA Emergency Roadside',
        ),
        Divider(
          thickness: 1,
        ),
        CallRow(
          title: 'Business Desk',
        ),
        Divider(
          thickness: 1,
        ),
        CallRow(
          title: 'Business Insurance',
        ),
        Divider(
          thickness: 1,
        ),
        CallRow(
          title: 'Cellphone Banking & Wallet',
        ),
        Divider(
          thickness: 1,
        ),
        CallRow(
          title: 'Credit Card Cancellation',
        ),
        Divider(
          thickness: 1,
        ),
        CallRow(
          title: 'Credit Card Cancellations',
        ),
        Divider(
          thickness: 1,
        ),
        CallRow(
          title: 'Credit Card Contact Centre',
        ),
        Divider(
          thickness: 1,
        ),
        CallRow(
          title: 'Customer Care',
        ),
        Divider(
          thickness: 1,
        ),
        CallRow(
          title: 'Deceased Clients - Reporting and support',
        ),
        Divider(
          thickness: 1,
        ),
        CallRow(
          title: 'FNB App Call Centre',
        ),
        Divider(
          thickness: 1,
        ),
        CallRow(
          title: 'Digital Banking',
        ),
        Divider(
          thickness: 1,
        ),
        CallRow(
          title: 'Easy',
        ),
        Divider(
          thickness: 1,
        ),
        CallRow(
          title: 'eBucks Lifestyle',
        ),
        Divider(
          thickness: 1,
        ),
        CallRow(
          title: 'FNB App Call Centre',
        ),
        Divider(
          thickness: 1,
        ),
        CallRow(
          title: 'FNB App Call Centre',
        ),
        Divider(
          thickness: 1,
        ),
        CallRow(
          title: 'eBucks',
        ),
        Divider(
          thickness: 1,
        ),
        CallRow(
          title: 'eBucks Travel',
        ),
        Divider(
          thickness: 1,
        ),
        CallRow(
          title: 'FNB Channel Islands',
        ),
        Divider(
          thickness: 1,
        ),
        CallRow(
          title: 'FNB Connect',
        ),
        Divider(
          thickness: 1,
        ),
        CallRow(
          title: 'FNB Gold Banking',
        ),
        Divider(
          thickness: 1,
        ),
        CallRow(
          title: 'FNB App Call Centre (International)',
        ),
        Divider(
          thickness: 1,
        ),
        CallRow(
          title: 'FNB Law on Call Personal Plan',
        ),
        Divider(
          thickness: 1,
        ),
        CallRow(
          title: 'FNB Law on Call Business Plan',
        ),
        Divider(
          thickness: 1,
        ),
        CallRow(
          title: 'FNB Life Funeral Plan',
        ),
        Divider(
          thickness: 1,
        ),
        CallRow(
          title: 'FNB Personal Loan Collection',
        ),
        Divider(
          thickness: 1,
        ),
        CallRow(
          title: 'FNB Loans Sales and Services',
        ),
        Divider(
          thickness: 1,
        ),
        CallRow(
          title: 'FNB Online Fraud ',
        ),
        Divider(
          thickness: 1,
        ),
        CallRow(
          title: 'FNB Private Clients',
        ),
        Divider(
          thickness: 1,
        ),
        CallRow(
          title: 'FNB Private Wealth',
        ),
        Divider(
          thickness: 1,
        ),
        CallRow(
          title: 'FNB Wills,Executor and Trustee Services',
        ),
        Divider(
          thickness: 1,
        ),
        CallRow(
          title: 'General Queries',
        ),
        Divider(
          thickness: 1,
        ),
        CallRow(
          title: 'Home Loans',
        ),
        Divider(
          thickness: 1,
        ),
        CallRow(
          title: 'Housing Finance',
        ),
        Divider(
          thickness: 1,
        ),
        CallRow(
          title: 'FNB Cash Investments',
        ),
        Divider(
          thickness: 1,
        ),
        CallRow(
          title: 'Islamic Service Suite',
        ),
        Divider(
          thickness: 1,
        ),
        CallRow(
          title: 'FNB App Call Centre',
        ),
        Divider(
          thickness: 1,
        ),
        CallRow(
          title: 'FNB App Call Centre',
        ),
        Divider(
          thickness: 1,
        ),
        CallRow(
          title: 'FNB App Call Centre',
        ),
        Divider(
          thickness: 1,
        ),
        CallRow(
          title: 'FNB App Call Centre',
        ),
        Divider(
          thickness: 1,
        ),
        CallRow(
          title: 'FNB App Call Centre',
        ),
        Divider(
          thickness: 1,
        ),
        CallRow(
          title: 'FNB App Call Centre',
        ),
        Divider(
          thickness: 1,
        ),
        CallRow(
          title: 'FNB App Call Centre',
        ),
        Divider(
          thickness: 1,
        ),
        CallRow(
          title: 'FNB App Call Centre',
        ),
        Divider(
          thickness: 1,
        ),
        CallRow(
          title: 'FNB App Call Centre',
        ),
        Divider(
          thickness: 1,
        ),
        CallRow(
          title: 'FNB App Call Centre',
        ),
        Divider(
          thickness: 1,
        ),
        CallRow(
          title: 'FNB App Call Centre',
        ),
        Divider(
          thickness: 1,
        ),
      ]),
    );
  }
}
