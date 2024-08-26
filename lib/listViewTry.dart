import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListViewTry extends StatelessWidget {
  const ListViewTry({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade100,
      appBar: AppBar(
        title: Text("Listview try"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          ListView.builder(

            itemCount: 3,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Container(

                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/vectorimage.png"
                        )
                      ),
                      // color: Colors.deepOrange,

                    ),



                  child: ListTile(
                    title: Center(child: Text("Hello Nandhitha")),
                  ),
                );
              },
          )
          // Image.asset(
          //   'assets/vectorimage.png',
          //   fit: BoxFit.cover,
          //   color: Color(0xffC46F4E).withOpacity(1.0),
          //   colorBlendMode: BlendMode.modulate,
          // ),
          // DecoratedBox(
          //   decoration: BoxDecoration(
          //     gradient: LinearGradient(
          //       begin: FractionalOffset.topCenter,
          //       end: FractionalOffset.bottomCenter,
          //       colors: [
          //         Color(0xffC46F4E).withOpacity(0.0),
          //         Color(0xffC46F4E).withOpacity(0.8),
          //       ],
          //     ),
          //   ),
          // ),
          // DecoratedBox(
          //   decoration: BoxDecoration(
          //
          //     gradient: LinearGradient(
          //         begin: FractionalOffset.topLeft,
          //         end: FractionalOffset.bottomRight,
          //         colors: [
          //           Color(0xffC46F4E).withOpacity(0.8),
          //           Color(0xffC46F4E).withOpacity(0.8),
          //           Color(0xffC46F4E).withOpacity(0.8),
          //           Color(0xffC46F4E).withOpacity(0.8),
          //           Color(0xffC46F4E).withOpacity(0.8),
          //         ],
          //         stops: [0.0,0.25,0.5,0.75,1.0]
          //     ),
          //   ),
          // ),
        ],

      ),
    );
  }
}
