import 'package:flutter/material.dart';
import 'package:ubelaw_client/client/chatScreenClient.dart';
import 'package:ubelaw_client/client/tabScreens/chatTab.dart';

import 'tabScreens/accountTab.dart';
import 'tabScreens/orderTab.dart';

class MainScreen extends StatefulWidget {
  const
  MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: selectedIndex == 0
          ? ChatTab()
          : selectedIndex == 1
              ? OrderTab()
              :  AccountTab(),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.chat_outlined), label: "Chat"),
          BottomNavigationBarItem(icon: Icon(Icons.bookmark_border), label: "Order"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account"),

        ],

        unselectedItemColor: Colors.white54,
        selectedItemColor: Colors.white,
        backgroundColor: Colors.black54,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: TextStyle(fontSize: 14),
        unselectedLabelStyle: TextStyle(fontSize: 14),
        showUnselectedLabels: true,
        currentIndex: selectedIndex,
        onTap: (int index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
    );
  }
}
