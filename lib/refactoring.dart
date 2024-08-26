import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Refactoring extends StatelessWidget {
  const Refactoring({super.key});

  @override
  Widget build(BuildContext context) {

    Widget cricket=Icon(Icons.sports_cricket);
    Widget soccer=Icon(Icons.sports_soccer);
    Widget baseball=Icon(Icons.sports_baseball);

    Widget sportsRow=Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        // Icon(Icons.sports_cricket),
        cricket,
        // Icon(Icons.sports_soccer),
        soccer,
        // Icon(Icons.sports_baseball)
        baseball

      ],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Refactoring'),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
      ),
      body: ListView(
        children: [
            sportsRow,sportsRow,sportsRow

        ],
      ),
    );
  }
}
