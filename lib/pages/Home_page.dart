import 'package:flutter/material.dart';
 
class Home_page extends StatelessWidget {
  const Home_page({super.key});
 

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(

      // ),
       body: Container(
        child: Center(
          child: Text("Home Page",
              style: TextStyle(color: Colors.white, fontSize: 40)),
        ),
        decoration: BoxDecoration(
          color: Color.fromARGB(188, 52, 62, 197),
        ),
      ),

    );
  }
}
