import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:fnb_clone/backend/LookUp.dart';

class DarkModeScreen extends StatefulWidget {
  const DarkModeScreen({super.key});

  @override
  State<DarkModeScreen> createState() => _DarkModeScreenState();
}

class _DarkModeScreenState extends State<DarkModeScreen> {
  bool _switch = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Dark mode',
          style: TextStyle(color: Colors.black),
        ),
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 251, 249, 249),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('System default'),
                Checkbox(
                  value: false,
                  onChanged: (value) {},
                )
              ],
            ),
            const Divider(
              thickness: 1.5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Dark mode'),
                Switch(
                  value: _switch,
                  onChanged: (value) {
                    setState(() {
                      if (!_switch) {
                        LookUp.isDarkMode = true;
                        _switch = true;
                      } else {
                        LookUp.isDarkMode = false;
                        _switch = false;
                      }
                    });
                  },
                )
              ],
            ),
            const Divider(
              thickness: 1.5,
            ),
            const Text(
                'Activate dark mode by syncronizing the FNB App to your system settings.'),
            const Divider(
              thickness: 1.5,
            ),
          ],
        ),
      ),
    );
  }
}
