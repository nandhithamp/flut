import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertBoxWidget extends StatelessWidget {
  const AlertBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Dialog Example'),
      ),
      body: Center(
        child: ButtonWidget(),
      ),

    );
  }
}
class ButtonWidget extends StatelessWidget {
  void _showAlertDialog(BuildContext context, String action) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Confirmation"),
          content: Text("Are you sure you want to $action?"),
          actions: <Widget>[
            TextButton(
              child: Text("Cancel"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text("Yes"),
              onPressed: () {
                // Perform the accept or reject action here
                Navigator.of(context).pop();
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('You selected $action!'))
                );
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ElevatedButton(
          onPressed: () {
            _showAlertDialog(context, "accept");
          },
          child: Text("Accept"),
        ),
        ElevatedButton(
          onPressed: () {
            _showAlertDialog(context, "reject");
          },
          child: Text("Reject"),
        ),
      ],
    );
  }
}