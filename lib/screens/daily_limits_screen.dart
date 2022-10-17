import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fnb_clone/widgets/drawer.dart';

class LimitsScreen extends StatefulWidget {
  const LimitsScreen({super.key});

  @override
  State<LimitsScreen> createState() => _LimitsScreenState();
}

class _LimitsScreenState extends State<LimitsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
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
            'Limits',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: false,
          bottom: const TabBar(
            //indicatorPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 3,
            indicatorColor: Color.fromARGB(255, 20, 204, 201),
            labelColor: Color.fromARGB(255, 20, 204, 201),
            tabs: [
              Tab(
                text: 'Set limits',
              ),
              Tab(text: 'View remaining'),
            ],
          ),
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
        body: TabBarView(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    const Text(
                      'The limits below are for your Banking App profile. If you transact via any of the dDigital channels (i.e. Online Banking, Cellphone Banking and App), your remaining available limit across these channels will be adjusted accordingly.',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Please note: Below are the channel limits that are applied only if you have accounts that are transactional',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Transfers',
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Payments',
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText:
                            'Pay and Clear (forms part of your Payment limit)',
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Prepaid',
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Send money',
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Vouchers',
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Cardless cash withdrawal',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Row(
                      children: const [
                        Text(
                          'Below are you remaining Banking App limits fir the day.',
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: const [
                        Text(
                          'NOTE: Your remaining limits are refreshed daily at 07h00',
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Column(
                          children: const [
                            Text(
                              'Payments',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              'R350,000',
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        Column(
                          children: const [
                            Text(
                              'Transfers',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              'R500,000',
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        Column(
                          children: const [
                            Text(
                              'Pay and Clear',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              'R500,000',
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        Column(
                          children: const [
                            Text(
                              'Prepaid',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              'R1,000',
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        Column(
                          children: const [
                            Text(
                              'Send money',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              'R3,000',
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        Column(
                          children: const [
                            Text(
                              'Vouchers',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              'R1,000',
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        Column(
                          children: const [
                            Text(
                              'Cardless cash withdrawal',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              'R1,500',
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
