import 'package:flutter/material.dart';
class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About page"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Center(child: Text('About page',style: TextStyle(fontSize: 30,color: Colors.pink,fontWeight: FontWeight.w500),)),
    );
  }
}
