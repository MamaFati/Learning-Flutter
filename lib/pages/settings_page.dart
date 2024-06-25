import 'package:flutter/material.dart';
 

class settings_page extends StatelessWidget {
  const settings_page({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Container(
        child: Center(
          child: Text("Settings Page",
              style: TextStyle(color: Colors.white, fontSize: 40)),
        ),
        decoration: BoxDecoration(
          color: Color.fromARGB(189, 151, 52, 197),
        ),
      ),

    );
  }
}
