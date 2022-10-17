import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AccountTile extends StatefulWidget {
  final String title;
  final String accountType;
  final double outerBalance;
  final double balace;
  final double availBalance;
  const AccountTile(
      {super.key,
      required this.title,
      required this.accountType,
      required this.outerBalance,
      required this.balace,
      required this.availBalance});

  @override
  State<AccountTile> createState() => _AccountTileState();
}

class _AccountTileState extends State<AccountTile> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.title,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 20, 204, 201),
                    ),
                  ),
                  Text(
                    'R${widget.outerBalance}',
                    style: const TextStyle(
                      color: Color.fromARGB(255, 20, 204, 201),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
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
                    Text(widget.accountType),
                    Column(
                      children: [
                        Text('Avail R ${widget.availBalance}'),
                        Text('   Bal R${widget.balace}'),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
