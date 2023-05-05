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
        appBar: AppBar(
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(bottom: 20),
                      child: Text(
                        'Below are you remaining Banking App limits fir the day.',
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 20),
                      child: Text(
                        'NOTE: Your remaining limits are refreshed daily at 07h00',
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    _textColumn('Payments', 'R350,000'),
                    _textColumn('Transfer', 'R500,000'),
                    _textColumn('Pay and Clear', 'R500,000'),
                    _textColumn('Prepaid', '1,000'),
                    _textColumn('Send money', 'R3,000'),
                    _textColumn('Vouchers', 'R1,000'),
                    _textColumn('Cardless cash withdrawal', 'R,500'),
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

Widget _textColumn(String title, String amount) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 25.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(color: Colors.grey),
        ),
        Text(
          amount,
          style: const TextStyle(color: Colors.black),
        ),
      ],
    ),
  );
}
