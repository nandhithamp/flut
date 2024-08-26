import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShowDialog extends StatelessWidget {
  const ShowDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          FloatingActionButton(
            onPressed: () {
              String category = ''; // Variable to hold the input

              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('Add Category'), // Dialog title
                    content: TextField(
                      onChanged: (text) {
                        category = text; // Update the variable with the input text
                      },
                      decoration: InputDecoration(hintText: 'Enter category'), // Text field decoration
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop(); // Close the dialog
                        },
                        child: Text('Cancel'), // Cancel button
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Handle the save action here
                          print('Category: $category'); // Use the variable to get the input text
                          Navigator.of(context).pop(); // Close the dialog
                        },
                        child: Text('Save'), // Save button
                      ),
                    ],
                  );
                },
              );
            },
            child: Icon(Icons.add),
            backgroundColor: Colors.red,
          )

        ],
      ),
    );
  }
}
