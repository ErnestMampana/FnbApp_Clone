import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fnb_clone/backend/LookUp.dart';
import 'package:fnb_clone/backend/models/account.dart';
import 'package:fnb_clone/widgets/account_tile.dart';
import 'package:fnb_clone/widgets/row_icons.dart';
import 'package:icofont_flutter/icofont_flutter.dart';

class AccountsScreen extends StatefulWidget {
  const AccountsScreen({super.key});

  @override
  State<AccountsScreen> createState() => _AccountsScreenState();
}

class _AccountsScreenState extends State<AccountsScreen> {
  final List<Map<String, dynamic>> _accounts = [];

  @override
  void initState() {
    setState(() {
      _accounts.clear();
      for (var booking in LookUp().accounts) {
        _accounts.add(booking.toMap());
      }
      debugPrint(_accounts.toString());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Icon(Icons.chat_bubble_outline),
        ],
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 251, 249, 249),
        title: const Text(
          'FNB',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 250, 10),
              child: Text(
                "My accounts",
                textAlign: TextAlign.left,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: LookUp().accounts.length,
              itemBuilder: (context, index) {
                return AccountTile(
                  accountData: Account.fromJson(_accounts[index]),
                );
              },
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 0, 300, 0),
              child: Text(
                "Buy",
                textAlign: TextAlign.left,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ),
            const RowIconsWidget(
              iconOne: CupertinoIcons.device_phone_portrait,
              descriptionOne: "Airtime + bundles",
              iconTwo: CupertinoIcons.lightbulb,
              descriptionTwo: "Electricity",
              iconThree: BootstrapIcons.xbox,
              descriptionThree: "Lotto",
              iconFour: Icons.more_horiz,
              descriptionFour: "More",
            ),
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 1,
                    // offset:
                    //     const Offset(0, 0), // changes position of shadow
                  ),
                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              height: 60,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Rewards',
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Just for you',
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 100,
                      height: 30,
                      child: OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          //shadowColor: Colors.fromARGB(255, 165, 127, 124),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          side: const BorderSide(
                              width: 1.0, color: Colors.orange),
                        ),
                        child: const Center(
                          child: Text(
                            "View",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 20, 260, 0),
              child: Text(
                "Payments",
                textAlign: TextAlign.left,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ),
            const RowIconsWidget(
              iconOne: Icons.account_balance_wallet_outlined,
              descriptionOne: "eWallet",
              iconTwo: BootstrapIcons.lightning_charge,
              descriptionTwo: "Once-off payments",
              iconThree: IcoFontIcons.pay,
              descriptionThree: "Payments",
              iconFour: IcoFontIcons.pay,
              descriptionFour: "Pay",
            ),
          ],
        ),
      ),
    );
  }
}

Widget accountTile(Account accountData) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 10),
    child: Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 1,
            // offset:
            //     const Offset(0, 0), // changes position of shadow
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      height: 60,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(accountData.accountType!),
            Column(
              children: [
                Text(
                  'Avail R ${accountData.availableBalance}',
                  textDirection: TextDirection.rtl,
                ),
                Text(
                  'Bal R${accountData.balance}',
                  textDirection: TextDirection.rtl,
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
