import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ExpandedWidgets extends StatelessWidget {
  const ExpandedWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expanded"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(

              color: Colors.pink,
            ),
          ),
          Expanded(
            child: Container(

              color: Colors.yellowAccent,
            ),
          ),
          Expanded(
            child: Container(
              height: 100,
              color: Colors.blue,
            ),
          )
        ],
      ),
    );
  }
}
