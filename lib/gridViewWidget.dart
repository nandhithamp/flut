import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("GridView",style: TextStyle(color: Colors.pink.shade700),),
          centerTitle: true,
          leading: Icon(Icons.grid_view,color: Colors.pink.shade700,),

        ),
        backgroundColor: Colors.blueGrey,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20,),
              Center(child: Text("get  data  ")),


           Padding(
             padding: const EdgeInsets.all(80),
             child: GridView.builder(
              shrinkWrap: true,
              physics: ScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 5,
                mainAxisSpacing: 10, // Added spacing between rows
              ),
              itemCount: 10, // Set the number of items
              itemBuilder: (context, index) {
                return Container(
                  height: 50,
                  width: 50,
                  color: Colors.pinkAccent.shade700,
                );
              },
                       ),
           ),
                
            ],
          ),
        ),
      ),
    );
  }
}
