import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FloatingActionBtn extends StatelessWidget {
  const FloatingActionBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Floating Action Button'),
      ),
      body: Center(
        child: Text('Your Content Here'),
      ),
      floatingActionButton: Container(
        height: 60, // Adjust the height as needed
        width: MediaQuery.of(context).size.width - 40, // Adjust the width as needed
        child: FloatingActionButton.extended(
          onPressed: () {
            // Your onPressed logic here
          },
          label: Text(
            'Contribute Now',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontFamily: 'poppins',
            ),
          ),
          backgroundColor: Color(0xffC46F4E),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
