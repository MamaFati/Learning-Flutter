Text widgets

````
child: Center(
             child: Text(
               "Hello world",
               style: TextStyle(
                 color: Colors.white,
                 fontSize: 40,
               ),
             ),
           ),
```
Appbar widget
```
  appBar: (AppBar(
          backgroundColor: Color.fromARGB(255, 118, 27, 134),

          title: Text(
            "App Bar",
            style: TextStyle(color: Colors.white),
          ),
          // With the actions widget you can add more icons
          actions: [
            Icon(
              Icons.favorite,
              color: Colors.white,
            )
          ],

          elevation: 0,
        )),
```
Icon widgets
```
 child: Icon(Icons.ad_units,
           color: Colors.white,
           size: 40,
           ),
```
sizing a widget
```
    child: Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 118, 27, 134),
              borderRadius: BorderRadius.circular(10),
            ),
    ),

```
colunm widget
```
body: Column(
          // column container works like grid or flex in a column form
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                // height: 200,
                // width:200,
                color: Colors.deepPurple,
              ),
            ),
            // second container
            Expanded(
              child: Container(
                // height: 200,
                // width:200,
                color: Color.fromARGB(255, 22, 173, 67),
              ),
            ),

            // Third container
            Expanded(
              // flex 2 will multiply the original size into 2
              // flex: 2,
              child: Container(
                // height: 200,
                // width: 200,
                color: Color.fromARGB(255, 186, 101, 194),
              ),
            )
          ],
        ),
```
stack widget
```
body: Stack(
            alignment: Alignment.bottomRight,
            children: [
              Container(
                height: 300,
                width: 300,
                color: Colors.green,
              ),
              Container(
                height: 200,
                width: 200,
                color: Colors.yellow,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.red,
              )
            ],
          )
```
GestureDector : This widget works like css hover
```
body: Center(
          // GestureDector works like hover
          child:  GestureDetector(
            onTap:  userTapped,
            child: Container(
              height: 300,
              width: 300,
              color: Colors.deepPurple,
              child: Center(
               child: Text("Tag Me", style: TextStyle(color: Colors.white)),

              ),
            ),
          ),
        ),
```
Next section (Navgations)
create a floder name pages with 2 files
```
import 'package:flutter/material.dart';
import 'package:untitled/pages/secondPage.dart';

class firstPage extends StatelessWidget {
  const firstPage({super.key});

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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
            ),
            child: Text("Next Page", style: TextStyle(color: Colors.white)),
            onPressed:(){

              // navigate to the next page
              Navigator.push(context, MaterialPageRoute(builder: (context) => secondPage(),));
            } ,


            ),
        ),
      ),
    );
  }
}

```
Second page
```
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

```
Button Navigation Bar
```
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
```
Drawer Navigation
```
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
```

````
