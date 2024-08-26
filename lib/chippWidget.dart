import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChipWidgets extends StatelessWidget {
  const ChipWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> place=["Malappuram","Kozhikode","Kannur","Thrissur","Alappuzha","Kollam","Wazhanad","Kasarkode","thiruvananthapuram"];
    return Scaffold(
      appBar: AppBar(
        title: Text("Chip Widgets"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          GridView.builder(
            shrinkWrap: true,
            itemCount: place.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
            ),
            itemBuilder: (context, index) {
              return Container(
                  child: Chip(
                  label: Container(
                    child: Text(place[index]),
                    // color: Colors.red,
                  ),
                    backgroundColor: index==1?Colors.orange:null,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
