import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListViewAnothertry extends StatelessWidget {
  const ListViewAnothertry({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListViewAnothertry"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          ListView.builder(
            itemCount: 3,
              itemBuilder: (context, index) {
                return Container(
                  // Image.asset(
                  //   'assets/vectorimage.png',
                  //   fit: BoxFit.cover,
                  //   color: Color(0xffC46F4E).withOpacity(1.0),
                  //   colorBlendMode: BlendMode.modulate,
                  // ),


                  // child: DecoratedBox(
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

                  // child: DecoratedBox(child: ,
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
                );
              },
          )
        ],
      ),
    );
  }
}
