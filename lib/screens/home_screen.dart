import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:fnb_clone/backend/LookUp.dart';
import 'package:fnb_clone/widgets/drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool showDelete = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: LookUp.isDarkMode ? Colors.black : Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(
            color: LookUp.isDarkMode ? Colors.white : Colors.black),
        backgroundColor: LookUp.isDarkMode
            ? Colors.black
            : const Color.fromARGB(255, 251, 249, 249),
        elevation: 0,
        title: Text(
          'FNB',
          style: TextStyle(
            color: LookUp.isDarkMode ? Colors.white : Colors.black,
          ),
        ),
        centerTitle: false,
        actions: [
          Icon(
            Icons.messenger_outline_sharp,
            color: LookUp.isDarkMode ? Colors.white : Colors.black,
          ),
        ],
      ),
      bottomNavigationBar: Visibility(
        visible: showDelete,
        child: SizedBox(
          //color: Colors.red,
          height: 50,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 30,
                    width: 150,
                    child: OutlinedButton(
                      onPressed: () {
                        setState(() {
                          showDelete = false;
                        });
                      },
                      style: OutlinedButton.styleFrom(
                        backgroundColor:
                            LookUp.isDarkMode ? Colors.black : Colors.white,
                        //shadowColor: Colors.fromARGB(255, 165, 127, 124),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        side: BorderSide(
                            width: 1.0,
                            color: LookUp.isDarkMode
                                ? Colors.white
                                : Colors.black),
                      ),
                      child: Center(
                        child: Text(
                          "Cancel",
                          style: TextStyle(
                              color: LookUp.isDarkMode
                                  ? Colors.white
                                  : Colors.black),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    height: 30,
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        backgroundColor:
                            LookUp.isDarkMode ? Colors.white : Colors.black,
                        //shadowColor: Colors.fromARGB(255, 165, 127, 124),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        side: const BorderSide(width: 1.0, color: Colors.black),
                      ),
                      child: Center(
                        child: Text(
                          "Done",
                          style: TextStyle(
                              color: LookUp.isDarkMode
                                  ? Colors.black
                                  : Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
      //drawer: CustomDrawer(),
      body: ListView(
        children: [
          SizedBox(
            height: 200,
            //color: Colors.blue[200],
            child: ImageSlideshow(
                indicatorColor: Colors.orange,
                autoPlayInterval: 3000,
                isLoop: false,
                children: [
                  Image.asset(
                    'assets/download.jpeg',
                    fit: BoxFit.cover,
                  ),
                  // Image.asset(
                  //   'assets/apply.jpeg',
                  //   fit: BoxFit.cover,
                  // ),
                  // Image.asset(
                  //   'assets/newontheapp.jpeg',
                  //   fit: BoxFit.cover,
                  // ),
                  // Image.asset(
                  //   'assets/verify.jpeg',
                  //   fit: BoxFit.cover,
                  // ),
                ]),
          ),
          GestureDetector(
            child: Container(
              margin: const EdgeInsets.all(20),
              height: 40,
              decoration: BoxDecoration(
                color: LookUp.isDarkMode ? Colors.black : Colors.grey[200],
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
                border: Border.all(
                  color: Colors.grey,
                ),
              ),
              child: Center(
                child: TextField(
                  enabled: false,
                  decoration: InputDecoration(
                    labelText: "Search the FNB App",
                    prefixIcon: Icon(
                      Icons.search,
                      color: LookUp.isDarkMode ? Colors.white : Colors.black,
                    ),
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
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
            child: GridView.builder(
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              itemCount: LookUp().images.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: 25.0,
                //mainAxisSpacing: 100.0,
                childAspectRatio: 1 / 2,
              ),
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    GestureDetector(
                      onLongPress: () {
                        setState(() {
                          showDelete = true;
                        });
                      },
                      child: Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: showDelete ? 10 : 5,
                            ),
                            child: Container(
                              height: 70,
                              decoration: BoxDecoration(
                                color: LookUp.isDarkMode
                                    ? Colors.black
                                    : const Color.fromARGB(255, 251, 249, 249),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                border: Border.all(
                                  color: Colors.grey,
                                ),
                              ),
                              child: Center(
                                child: LookUp().images[index]['icon'],
                              ),
                            ),
                          ),
                          Visibility(
                            visible: showDelete,
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  var length = LookUp().images.length;
                                  print('========================== ' +
                                      length.toString());
                                  LookUp().images[index].remove(index);
                                  var lengthe = LookUp().images.length;
                                  print('========================== ' +
                                      lengthe.toString());
                                });
                              },
                              child: Container(
                                margin: const EdgeInsets.only(left: 55),
                                child: Icon(
                                  CupertinoIcons.clear_circled_solid,
                                  color: LookUp.isDarkMode
                                      ? Colors.white
                                      : Colors.black,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text(
                        LookUp().images[index]['description'],
                        style: TextStyle(
                          fontSize: 13,
                          color:
                              LookUp.isDarkMode ? Colors.white : Colors.black,
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 30, right: 310, bottom: 50),
            child: Icon(
              CupertinoIcons.add_circled,
              size: 50,
              color: Colors.orange,
            ),
          ),
        ],
      ),
    );
  }
}
