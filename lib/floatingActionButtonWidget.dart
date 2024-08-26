import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class FloatingABtn extends StatefulWidget {
  const FloatingABtn({super.key});

  @override
  State<FloatingABtn> createState() => _FloatingABtnState();
}

class _FloatingABtnState extends State<FloatingABtn> {
  int indexNum=0;
  List tabWidget=[
    Text('Home',style: TextStyle(
        fontSize: 50,
        fontWeight: FontWeight.bold
    ),
    ),
    Text('Profile',style: TextStyle(
        fontSize: 50,
        fontWeight: FontWeight.bold
    ),
    ),
    Text('DashBoard',style: TextStyle(
        fontSize: 50,
        fontWeight: FontWeight.bold
    ),
    ),
    Text('Settings',style: TextStyle(
        fontSize: 50,
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
              icon: Icon(
                  Icons.home
              ),
            label: "Home",
            backgroundColor: Colors.red

          ),
          BottomNavigationBarItem(
              icon: Icon(
                  Icons.account_circle
              ),
              label: "Profile",
              backgroundColor: Colors.green

          ),
          BottomNavigationBarItem(
              icon: Icon(
                  Icons.dashboard
              ),
              label: "DashBoard",
              backgroundColor: Colors.purple

          ),
          BottomNavigationBarItem(
              icon: Icon(
                  Icons.settings
              ),
              label: "Settings",
              backgroundColor: Colors.blue

          )
        ],
        currentIndex: indexNum,
        onTap: (int index) {
          setState(() {
            indexNum=index;
          });
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,


      // floatingActionButton: FloatingActionButton(
      //   onPressed: (){
      //
      //   },
      //   tooltip: "Add file",
      //   // mini: true,
      //   // foregroundColor: Colors.red,
      //   backgroundColor: Colors.green,
      //   // shape: RoundedRectangleBorder(
      //   //   borderRadius: BorderRadius.circular(90)
      //   // ),
      //   child: Icon(Icons.add),
      // ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: (){},
          label: Text("Add"),
        icon: Icon(Icons.add),
      ),
      body: Center(
        child: 
        tabWidget.elementAt(indexNum),
      ),
    );
  }
}
