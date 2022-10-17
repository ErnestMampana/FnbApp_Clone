import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:fnb_clone/screens/transfers_screen.dart';
import 'package:fnb_clone/widgets/drawer.dart';
import 'package:fnb_clone/widgets/icon_option.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: const Color.fromARGB(255, 251, 249, 249),
        elevation: 0,
        title: const Text(
          'FNB',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: false,
        // leading: const Icon(
        //   Icons.menu,
        //   color: Colors.black,
        // ),
        actions: const [
          Icon(
            Icons.messenger_outline_sharp,
            color: Colors.black,
          ),
        ],
      ),
      drawer: CustomDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              //color: Colors.blue[200],
              child: ImageSlideshow(
                  indicatorColor: Colors.orange,
                  autoPlayInterval: 3000,
                  isLoop: true,
                  children: [
                    Image.asset(
                      'assets/download.jpeg',
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      'assets/apply.jpeg',
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      'assets/newontheapp.jpeg',
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      'assets/verify.jpeg',
                      fit: BoxFit.cover,
                    ),
                  ]),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              //color: Colors.red,
              //height: 500,
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                    child: TextField(
                      enabled: false,
                      //controller: username,
                      decoration: InputDecoration(
                        labelText: "Search the FNB App",
                        prefixIcon: Icon(
                          Icons.search,
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 1, 1, 1),
                              width: 3,
                              style: BorderStyle.solid),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        child: const IconBuilder(
                          color: Colors.orange,
                          title: 'Login',
                          icon: Icon(
                            Icons.lock,
                            size: 50,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      GestureDetector(
                        child: const IconBuilder(
                          color: Color.fromARGB(255, 20, 204, 201),
                          title: 'Scan to pay',
                          icon: Icon(
                            Icons.qr_code_2,
                            size: 50,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      GestureDetector(
                        child: const IconBuilder(
                          color: Color.fromARGB(255, 20, 204, 201),
                          title: 'Buy',
                          icon: Icon(
                            Icons.shopping_basket,
                            size: 50,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      GestureDetector(
                        child: const IconBuilder(
                          color: Color.fromARGB(255, 20, 204, 201),
                          title: 'Payments',
                          icon: Icon(
                            Icons.payments_rounded,
                            size: 50,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        child: const IconBuilder(
                          color: Color.fromARGB(255, 20, 204, 201),
                          title: 'GuardMe',
                          icon: Icon(
                            Icons.location_on,
                            size: 50,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const TransfersScreen()),
                          );
                        },
                        child: const IconBuilder(
                          color: Color.fromARGB(255, 20, 204, 201),
                          title: 'Transfers',
                          icon: Icon(
                            Icons.transform_outlined,
                            size: 50,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      GestureDetector(
                        child: const IconBuilder(
                          color: Color.fromARGB(255, 20, 204, 201),
                          title: 'My offers',
                          icon: Icon(
                            Icons.local_offer,
                            size: 50,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      GestureDetector(
                        child: const IconBuilder(
                          color: Colors.orange,
                          title: 'Product Shop',
                          icon: Icon(
                            Icons.shopping_cart,
                            size: 50,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        child: const IconBuilder(
                          color: Color.fromARGB(255, 20, 204, 201),
                          title: 'Iformation',
                          icon: Icon(
                            Icons.info_outline,
                            size: 50,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      GestureDetector(
                        child: const IconBuilder(
                          color: Color.fromARGB(255, 20, 204, 201),
                          title: 'Messages',
                          icon: Icon(
                            Icons.message_rounded,
                            size: 50,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      GestureDetector(
                        child: const IconBuilder(
                          color: Color.fromARGB(255, 20, 204, 201),
                          title: 'TV Hub',
                          icon: Icon(
                            Icons.tv_rounded,
                            size: 50,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      GestureDetector(
                        child: const IconBuilder(
                          color: Color.fromARGB(255, 20, 204, 201),
                          title: 'Secure chat',
                          icon: Icon(
                            Icons.mark_chat_read_rounded,
                            size: 50,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
