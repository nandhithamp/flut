import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Neurobots"),
        centerTitle: true,
        leading: Icon(Icons.home),
        actions: [
          Icon(Icons.search),
          Icon(Icons.more_vert)
        ],
      ),
      body:
      Center(
        child:
        Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //text button
            TextButton(
            style: ButtonStyle(
              textStyle: MaterialStateProperty.all(TextStyle(fontSize: 30)),
            foregroundColor: MaterialStateProperty.all(Colors.red)
        ),
                onPressed: (){
                  log("Clicked-text button");
                },
                child:Text('TEXT BUTTON',)
            ),
SizedBox(height: 10,),
//Text Icon button
            TextButton.icon(
                style: ButtonStyle(
                    textStyle: MaterialStateProperty.all(TextStyle(fontSize: 30)),
                    foregroundColor: MaterialStateProperty.all(Colors.purple)
                ),
                onPressed: (){
                  log("Clicked-Text icon button");
                },
              onLongPress:() {
                log("Long pressed");
              } ,
              icon: Icon(Icons.home),
              label: Text("HOME-TextButton icon"),
            ),
//Elevated button
SizedBox(height: 10,),
            ElevatedButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                foregroundColor: MaterialStateProperty.all(Colors.deepOrangeAccent),
                backgroundColor: MaterialStateProperty.all(Colors.white10),
                // minimumSize: MaterialStateProperty.all(Size(30,50,)),//width,height
                textStyle: MaterialStateProperty.all(TextStyle(fontSize: 30))
              ),
                onPressed: (){
                log("clicked elevated button");
                },
                child: Text("Sign in-Elevated button"),

            ),
 SizedBox(height: 10,),
           OutlinedButton(
             style: ButtonStyle(
               side: MaterialStateProperty.all(BorderSide(
                 color: Colors.yellow,
                 width: 5,

               )),
               shape: MaterialStateProperty.all(
                 RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(5)
                 )
               ),
               foregroundColor: MaterialStateProperty.all(Colors.black),
               minimumSize: MaterialStateProperty.all(Size(200,50)),
               textStyle: MaterialStateProperty.all(TextStyle(fontSize: 25)),

             ),
               onPressed: (){
               log("clicked -outlined button");
               },
               child: Text("Sign up-Outlined button")
           )
          ],
        ),
      ),

    );
  }
}
