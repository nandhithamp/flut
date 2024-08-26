import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../cardExercise.dart';

class InkWellBtn extends StatelessWidget {
  const InkWellBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ink well"),
        centerTitle: true,
        leading: Icon(Icons.radio_button_on,color: Colors.pinkAccent.shade700,),
      ),
      backgroundColor: Colors.deepOrangeAccent.shade700,
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => CardExercise(),));
              },
              child: Container(
                height: 50,
                width: 150,
                color: Colors.white,
                child: Center(child: Text("Click me")),
              ),
            ),
          )
        ],
      ),
    );
  }
}
