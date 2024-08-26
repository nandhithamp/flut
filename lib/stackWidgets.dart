import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StackWidgets extends StatelessWidget {
  const StackWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return Scaffold(

      appBar: AppBar(
        title: Text("Stack widgets"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children:[
                Container(
                  height: height/2,
                  width: width,
                  color: Colors.purple.shade100,
                ),
                Container(
                  height: height/2.5,
                  width: width/2,
                  color: Colors.yellowAccent.shade400,
                ),
                Container(
                  height: height/8,
                  width: width/6,
                  color: Colors.pinkAccent.shade700,
                ),

              ]
            ),
        SizedBox(height: 20,),
            Stack(
              textDirection: TextDirection.rtl,
                alignment: Alignment.bottomCenter,
                children:[
                  Container(
                    height: 500,
                    width: 500,
                    color: Colors.purple.shade100,
                  ),
                  Container(
                    height: 400,
                    width: 400,
                    color: Colors.yellowAccent.shade400,
                  ),
                  Container(
                    height: 200,
                    width: 200,
                    color: Colors.pinkAccent.shade700,
                  ),

                ]
            ),
        Stack(
          alignment: Alignment.topLeft,
          children: [

            Align(
              alignment: Alignment.topRight,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.pinkAccent.shade200,
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.pinkAccent.shade200,
              ),
            )
          ],
        )
          //
          ],
        ),
      ),
    );
  }
}
