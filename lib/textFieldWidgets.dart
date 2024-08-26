import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFieldWidgets extends StatelessWidget {
  const TextFieldWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Nuerobots"),
        centerTitle: true,
      ),
      body:
      SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Center(
            child: Column(
              children: [
                TextField(
                    decoration: InputDecoration(
                      label: Text("User name"),
                      hintText: "Enter your user name",
                      prefixIcon: Icon(Icons.verified_user),
                      suffixIcon: Icon(Icons.verified),
                    ),
                ),
        
        SizedBox(height: 30,),
        
                TextField(
                  decoration: InputDecoration(
                    label: Text("User name"),
                    hintText: "Enter your user name",
                   prefixText: "Mr",
                    suffixText: " Hello"
                  ),
                ),
        
        SizedBox(height: 30,),
        
                TextField(
                  decoration: InputDecoration(
                    label: Text("User name"),
                    hintText: "Enter your user name",
                    helperText: "Enter your username or email",
                    hintStyle: TextStyle(fontSize: 20,
                    fontStyle: FontStyle.italic,
                    color: Colors.pinkAccent),
                    labelStyle: TextStyle(fontSize: 20,
                    color: Colors.teal,
        
                    fontStyle: FontStyle.italic)
                  ),
                ),
        
         SizedBox(height: 30,),
                TextField(
                  maxLength: 10,
                  obscureText: false,
                  keyboardType: TextInputType.number,
        
                ),
                TextField(
                  decoration:
                  InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                      borderSide: BorderSide(color: Colors.yellow)
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: BorderSide(color: Colors.red)
                    ),
                    label: Text("Username"),
        
                  )
                  ,
                ),
        
                TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
        
                    filled: true,
                    fillColor: Colors.grey
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
