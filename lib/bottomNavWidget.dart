import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int indexNum=0;
  List tabWidgets=[
    Text(
      "Home",style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold
    ),
    ),
    Text(
      "Profile",style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold
    ),


    ),
    Text(
      "Dashbord",style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold
    ),


    ),
    Text(
      "Settings",style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold
    ),


    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(

          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
              backgroundColor: Colors.orange

            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle),
                label: "Profile",
                backgroundColor: Colors.blue

            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.dashboard),
                label: "Dashboard",
                backgroundColor: Colors.red

            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: "Settings",
                backgroundColor: Colors.pink

            )
          ],
          // selectedFontSize: 30,
          // showSelectedLabels: false,
          currentIndex: indexNum,
          onTap: (int index){
            setState(() {
                indexNum=index;
            });
          },
        ),


      body:
      Center(
        child:
        tabWidgets.elementAt(indexNum),
      )
    );
  }
}
