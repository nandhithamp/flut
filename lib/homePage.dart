import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Nuerobots",
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.green,
          centerTitle: true,
          leading: Icon(Icons.home),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
          ],

          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),

          //Elevetion
          elevation: 35,
        ),
        backgroundColor: Colors.white,
        body:
        Center(
            child:
                // Text("Hello Nuerobots",style: TextStyle(fontSize: 30),
                // ),
                Container(

                  height: 200,
                  width: double.infinity,
          margin: EdgeInsets.all(20),
          alignment: Alignment.bottomCenter,
          decoration: BoxDecoration(
            color: Colors.yellow,
            border: Border.all(color: Colors.indigo),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(color: Colors.black,
              offset: Offset(5, 10),
                blurRadius: 10
            )]
          ),

          child: Text(
            "Welcome to Nuerobots",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w300,


            ),
          ),
        ),

        ),
      // Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   children: [
      //     Container(
      //       width: 100,
      //       height: 100,
      //       color: Colors.blue,
      //     ),
      //     Container(
      //       width: 100,
      //       height: 100,
      //       color: Colors.pink,
      //     ),
      //     Container(
      //       width: 100,
      //       height: 100,
      //       color: Colors.purple,
      //     )
      //   ],
      // ),
      // Column(
      //   children: [
      //     Center(
      //       child: Text("Hello Flutter",
      //         style: TextStyle(
      //           color: Colors.red,
      //           fontStyle: FontStyle.italic,
      //           letterSpacing: 10,
      //           wordSpacing: 50,
      //           backgroundColor:Colors.yellow,
      //           shadows: [
      //             Shadow(
      //                 color: Colors.black,
      //               offset: Offset(5,6),
      //               // blurRadius: 10
      //             )
      //           ]
      //         ),
      //       ),
      //     )
      //   ],
      // )


    );
  }
}
