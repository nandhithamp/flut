import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Neurobots"),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: 200,
                color: Colors.blue,
          
                child: Image.asset(
                  "assets/bird1.jpg",
                  fit: BoxFit.fill,
          
          
                ),
              ),
          
              Container(
                height: 200,
                width: 200,
                color: Colors.blue,
          
                child: Image.asset(
                  "assets/bird2.jpg",
                  fit: BoxFit.cover,
          
          
                ),
              ),
              Container(
                height: 200,
                width: 200,
                color: Colors.blue,

                child: Image.asset(
                  "assets/bird3.jpg",
                  fit: BoxFit.cover,


                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
