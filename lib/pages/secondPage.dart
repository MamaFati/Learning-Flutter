import 'package:flutter/material.dart';

class secondPage extends StatelessWidget {
  const secondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second page", style: TextStyle(color: Colors.white),),
         backgroundColor: Colors.black,
        ),
       
    );
  }
}
