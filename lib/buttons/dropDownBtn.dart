import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DropDownbtn extends StatefulWidget {
  const DropDownbtn({super.key});

  @override
  State<DropDownbtn> createState() => _DropDownbtnState();
}

class _DropDownbtnState extends State<DropDownbtn> {

  String dropdwnvalue="options";
  @override
  Widget build(BuildContext context) {
    var itemname=[ "options","Sunday",  "Monday","Tuesday","Wensday","Thursday","Friday","Saturday" ];
    return Scaffold(
      appBar: AppBar(
        title: Text("Dropdown button"),
        centerTitle: true,
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
         Center(
           child: Container(
             height: 80,
             width: 250,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(20),
               color: Colors.red.shade700
             ),
             child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [
                 Text("Choose ",style: TextStyle(color: Colors.white),),
                 DropdownButton(
                     value: dropdwnvalue,
                     icon: Icon(Icons.arrow_drop_down_circle_outlined,color: Colors.white,),
                     items: itemname.map((String itemname){
                       return DropdownMenuItem(
                           value: itemname,
                           child: Text(itemname,style: TextStyle(color: Colors.white,
                               backgroundColor: Colors.red.shade300),)
                       );
                     }).toList(),
                     onChanged: (String? newValue){
                       setState(() {
                         dropdwnvalue=newValue!;
                       });
                     }
                 )
               ],

             ),
           ),
         )
        ],
      ),
    );
  }
}
