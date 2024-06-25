// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:untitled/pages/Home_page.dart';
import 'package:untitled/pages/profile_page.dart';
import 'package:untitled/pages/settings_page.dart';
// import 'package:untitled/pages/secondPage.dart';

class firstPage extends StatefulWidget {
  firstPage({super.key});

  @override
  State<firstPage> createState() => _firstPageState();
}

class _firstPageState extends State<firstPage> {
// This widget track your sellected navigation
int selected_index = 0;

// 
void selected(int index){
  setState(() {
    selected_index = index;
  });
}

  final List _pages = [
    // home
    Home_page(),

    //
    profile_page(),

    // settings
    settings_page(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "First Page",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: _pages[selected_index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selected_index,
        onTap: selected,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "HOME"),
          //
          BottomNavigationBarItem(icon: Icon(Icons.person_2), label: "PROFILE"),
          //
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "SETTINGS")
        ],
      ),
      // This drawer works like hunberger in web development

      drawer: Drawer(
        backgroundColor: Colors.blue,
        child: Column(
          children: [
            DrawerHeader(
                child: Icon(
              Icons.favorite,
              color: Colors.white,
            )),
            // nav for home
            ListTile(
              leading: Icon(Icons.home),
              title: Text("H O M E"),
              onTap: () {
                Navigator.pop(context);
                // Navigate to home page
                Navigator.pushNamed(context, "/Home_page");
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("S E T T I N G S"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, "/settings_page");
              },
            ),
          ],
        ),
      ),
    );
  }
}
