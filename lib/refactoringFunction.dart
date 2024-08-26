import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RefactoringFunction extends StatelessWidget {
   RefactoringFunction({super.key});
  Widget sportButton(){
      return ElevatedButton(
        onPressed: (){
          print("On pressed clicked");
        },
        child: Text("Click me"),

      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Refactoring function"),
        centerTitle: true,
        backgroundColor: Colors.purpleAccent,
      ),
      body:ListView(
        children: [
          SizedBox(height: 50,),
          sportButton(),
          SizedBox(height: 30,),
          // ElevatedButton(
          //     onPressed: (){
          //       print("On pressed clicked");
          //     },
          //     child: Text("Click me"),
          //
          // ),
sportButton(),
          sportButton()
          // TextButton(
          //   style: TextButton.styleFrom(
          //     // primary: Colors.red, // foreground
          //   ),
          //   onPressed: () { },
          //   child: Text('TextButton with custom foreground'),
          // )
        ],
      )
    );
  }
}
