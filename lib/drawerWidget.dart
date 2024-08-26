import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Drawer"),
        centerTitle: true,

      ),
      backgroundColor: Color(0xffFFFDD0),
      drawer: Drawer(
        backgroundColor: Colors.green,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                accountName: Text("Nandhitha"),
                accountEmail: Text("nandhitha@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/bird3.jpg"),
                // backgroundColor: Colors.white,
              ),
            ),
            ListTile(
              leading: Icon(Icons.person,color: Colors.white,),
              title: Text("Profile",

                style: TextStyle(fontSize: 30,color: Colors.white),

              ),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.settings,color: Colors.white,),
              title: Text("Setting",

                style: TextStyle(fontSize: 30,color: Colors.white),

              ),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.dashboard,color: Colors.white,),
              title: Text("Dash board",

                style: TextStyle(fontSize: 30,color: Colors.white),

              ),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.account_circle_outlined,color: Colors.white,),
              title: Text("Signout",

                style: TextStyle(fontSize: 30,color: Colors.white),

              ),
              onTap: (){},
            )
          ],
        ),
      ),
      body: Column(

      ),
    );
  }
}
