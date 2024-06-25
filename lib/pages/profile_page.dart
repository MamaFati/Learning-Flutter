import 'package:flutter/material.dart';

class profile_page extends StatelessWidget {
  const profile_page({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text("Profile Page",
              style: TextStyle(color: Colors.white, fontSize: 40)),
        ),
        decoration: BoxDecoration(
          color: Color.fromARGB(189, 52, 197, 59),
        ),
      ),
    );
  }
}
