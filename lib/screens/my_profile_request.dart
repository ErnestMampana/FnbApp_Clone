import 'package:flutter/material.dart';
import 'package:fnb_clone/backend/LookUp.dart';
import 'package:fnb_clone/backend/models/profile_tile.dart';
import 'package:fnb_clone/screens/settings_screen.dart';

class MyProfileRequest extends StatefulWidget {
  const MyProfileRequest({super.key});

  @override
  State<MyProfileRequest> createState() => _MyProfileRequestState();
}

class _MyProfileRequestState extends State<MyProfileRequest> {
  final List<Map<String, dynamic>> _profileTiles = [];

  @override
  void initState() {
    setState(() {
      _profileTiles.clear();
      for (var booking in LookUp().profileTiles) {
        _profileTiles.add(booking.toMap());
      }
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
          'My profile',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: false,
      ),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return profileTiles(
              context, ProfileTile.fromJson(_profileTiles[index]));
        },
      ),
    );
  }
}

Widget profileTiles(BuildContext context, ProfileTile profileTileData) {
  return InkWell(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const SettingsScreen()),
      );
    },
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
      margin: const EdgeInsets.fromLTRB(20, 10, 20, 0),
      height: MediaQuery.of(context).size.height * 0.075,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.50,
                width: MediaQuery.of(context).size.height * 0.050,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(50),
                  ),
                  border: Border.all(
                    color: Colors.grey,
                  ),
                ),
                child: Icon(
                  profileTileData.tileIcon,
                  color: const Color.fromARGB(255, 20, 204, 201),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    profileTileData.tileName!,
                  ),
                ),
                const Spacer(),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    profileTileData.tileDescription!,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
