import 'package:flutter/material.dart';

void main() => runApp(LoginScreen());

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String? _selectedDesignation;
  final List<String> _designations = ["User", "Designer"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Login")),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Other login fields like email, password, etc.
              Text("Select your designation:"),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Designation",
                ),
                value: _selectedDesignation,
                items: _designations.map((String designation) {
                  return DropdownMenuItem<String>(
                    value: designation,
                    child: Text(designation),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedDesignation = newValue;
                  });
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_selectedDesignation != null) {
                    // Proceed with login
                    // Navigate to respective screen based on the designation
                    if (_selectedDesignation == "User") {
                      // Navigate to User Home Screen
                    } else {
                      // Navigate to Designer Home Screen
                    }
                  } else {
                    // Show an error message
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Please select a designation")),
                    );
                  }
                },
                child: Text("Login"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
