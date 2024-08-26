import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DateTimeWidgets extends StatefulWidget {
  const DateTimeWidgets({super.key});

  @override
  State<DateTimeWidgets> createState() => _DateTimeWidgetsState();
}

class _DateTimeWidgetsState extends State<DateTimeWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Date and Time"),
        centerTitle: true,
      ),
      body: Column(
        children: [

        ],
      ),
    );
  }
}
