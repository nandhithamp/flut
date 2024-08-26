import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CircleAvatarWidget extends StatelessWidget {
  const CircleAvatarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Circle Avatar Widgets"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 200,
                backgroundColor: Colors.black45,
                child: CircleAvatar(
                  radius: 100,
                  // backgroundColor: Colors.green,
                  // foregroundColor: Colors.red,
                  backgroundImage: AssetImage("assets/bird3.jpg"),

                  child:
                  Text("Sign in",style: TextStyle(fontSize: 30,color: Colors.white),),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
