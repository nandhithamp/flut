import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Gesturebtn extends StatelessWidget {
  const Gesturebtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gesture button",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      backgroundColor:Colors.orange,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: GestureDetector(
              onTap: () {
                const snackBar=SnackBar(content: Text("You just tapped on the button",));
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
                // Scaffold.of(context).showSnackBar(snackBar);

              },
              child: Container(
                height: 50,
                width: 100,
                color: Colors.purpleAccent,
                child: Center(child: Text("Tap here",style: TextStyle(color: Colors.white),)),
              ),
            ),
          )
        ],
      ),

    );
  }
}
