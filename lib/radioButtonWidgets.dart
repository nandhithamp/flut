import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class radioBtnWidget extends StatefulWidget {
  const radioBtnWidget({super.key});

  @override
  State<radioBtnWidget> createState() => _radioBtnWidgetState();
}

class _radioBtnWidgetState extends State<radioBtnWidget> {
  String? gender;
  String? status;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RadioButton Widgets"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          Container(
            color: Colors.amber,
            child:
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child:
                  Text("Select your gender",
                    style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
                  ),
                ),
                ListTile(
                  title: Text("Male"),
                  leading:Radio(
                      value: "Male",
                      groupValue: gender,
                      onChanged: (value){
                        setState(() {
                          gender=value;
                        });
                      }
                  ),
                ),
                ListTile(
                  title: Text("Female"),
                  leading:Radio(
                      value: "Female",
                      groupValue: gender,
                      onChanged: (value){
                        setState(() {
                          gender=value;
                        });
                      }
                  ),
                ),
                ListTile(
                  title: Text("Other"),
                  leading:Radio(
                      value: "Other",
                      groupValue: gender,
                      onChanged: (value){
                        setState(() {
                          gender=value;
                        });
                      }
                  ),
                )
              ],
            ),
          ),
          Container(

            child: Column(
              children: [
                Text("Marital Status",style: TextStyle(fontSize: 25),),
                RadioListTile(
                  activeColor: Colors.red,
                  title: Text("Married"),
                    value:"Married" ,
                    groupValue: status,
                    onChanged: (value){
                      setState(() {
                        status=value;
                      });
                    }
                ),
                RadioListTile(
                  activeColor: Colors.red,
                    title: Text("Unmarried"),
                    value:"Unmarried" ,
                    groupValue: status,
                    onChanged: (value){
                      setState(() {
                        status=value;
                      });
                    }
                ),
                Text("$status")

              ],
            ),
          )
        ],
      ),
    );
  }
}
