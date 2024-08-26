import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FlexibleWidgets extends StatelessWidget {
  const FlexibleWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(
            child: Container(
              height: MediaQuery.of(context).size.height,
              color: Colors.red.shade700,
              child: Column(
                children: [
                  Container(
                    height: 100,
                    color: Colors.blueGrey.shade700,
                  ),
                  Flexible(
                    child: Container(
                      // height: 630.7,
                      color: Colors.blue,
                    ),
                  ),


                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
