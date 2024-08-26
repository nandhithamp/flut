import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Nuerobots"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Card(
              color: Colors.yellow,
              elevation: 20,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(80)
              ),
              shadowColor: Colors.greenAccent,
              child: Column(
                children: [
                  ListTile(
                    title: Text("CBI 5"),
                    subtitle: Text("Starring Mammooty"),
                    textColor:Color(0XFF003366) ,
                    leading: Icon(Icons.movie),
                    iconColor: Colors.green,
                    trailing: Icon(Icons.more_horiz),
                    onTap: () {

                    },
                  )
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(10),
            child: Card(
              color: Colors.yellow,
              elevation: 20,

              shadowColor: Colors.teal,
              child: Column(
                children: [
                  ListTile(
                    title: Text("LUCIFER"),
                    subtitle: Text("Starring Mohanal"),
                    textColor:Color(0XFF003366) ,
                    leading: Icon(Icons.movie),
                    iconColor: Colors.green,
                    trailing: Icon(Icons.more_horiz),
                    onTap: () {

                    },
                  )
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(10),
            child: Card(
              color: Colors.yellow,
              elevation: 20,
              shadowColor: Colors.red,
              child: Column(
                children: [
                  ListTile(
                    title: Text("KADUVA"),
                    subtitle: Text("Starring Prithviraj"),
                    textColor:Color(0XFF003366) ,
                    leading: Icon(Icons.movie),
                    iconColor: Colors.green,
                    trailing: Icon(Icons.more_horiz),
                    onTap: () {

                    },
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Card(
              color: Colors.yellow,
              elevation: 20,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(80)
              ),
              shadowColor: Colors.greenAccent,
              child: Column(
                children: [
                  ListTile(
                    title: Text("CBI 5"),
                    subtitle: Text("Starring Mammooty"),
                    textColor:Color(0XFF003366) ,
                    leading: Icon(Icons.movie),
                    iconColor: Colors.green,
                    trailing: Icon(Icons.more_horiz),
                    onTap: () {

                    },
                  )
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(10),
            child: Card(
              color: Colors.yellow,
              elevation: 20,

              shadowColor: Colors.teal,
              child: Column(
                children: [
                  ListTile(
                    title: Text("LUCIFER"),
                    subtitle: Text("Starring Mohanal"),
                    textColor:Color(0XFF003366) ,
                    leading: Icon(Icons.movie),
                    iconColor: Colors.green,
                    trailing: Icon(Icons.more_horiz),
                    onTap: () {

                    },
                  )
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(10),
            child: Card(
              color: Colors.yellow,
              elevation: 20,
              shadowColor: Colors.red,
              child: Column(
                children: [
                  ListTile(
                    title: Text("KADUVA"),
                    subtitle: Text("Starring Prithviraj"),
                    textColor:Color(0XFF003366) ,
                    leading: Icon(Icons.movie),
                    iconColor: Colors.green,
                    trailing: Icon(Icons.more_horiz),
                    onTap: () {

                    },
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Card(
              color: Colors.yellow,
              elevation: 20,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(80)
              ),
              shadowColor: Colors.greenAccent,
              child: Column(
                children: [
                  ListTile(
                    title: Text("CBI 5"),
                    subtitle: Text("Starring Mammooty"),
                    textColor:Color(0XFF003366) ,
                    leading: Icon(Icons.movie),
                    iconColor: Colors.green,
                    trailing: Icon(Icons.more_horiz),
                    onTap: () {

                    },
                  )
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(10),
            child: Card(
              color: Colors.yellow,
              elevation: 20,

              shadowColor: Colors.teal,
              child: Column(
                children: [
                  ListTile(
                    title: Text("LUCIFER"),
                    subtitle: Text("Starring Mohanal"),
                    textColor:Color(0XFF003366) ,
                    leading: Icon(Icons.movie),
                    iconColor: Colors.green,
                    trailing: Icon(Icons.more_horiz),
                    onTap: () {

                    },
                  )
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(10),
            child: Card(
              color: Colors.yellow,
              elevation: 20,
              shadowColor: Colors.red,
              child: Column(
                children: [
                  ListTile(
                    title: Text("KADUVA"),
                    subtitle: Text("Starring Prithviraj"),
                    textColor:Color(0XFF003366) ,
                    leading: Icon(Icons.movie),
                    iconColor: Colors.green,
                    trailing: Icon(Icons.more_horiz),
                    onTap: () {

                    },
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
