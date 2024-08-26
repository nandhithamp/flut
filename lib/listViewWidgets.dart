import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListViewWidgets extends StatelessWidget {
   ListViewWidgets({super.key});

  List<String> name=["Nandhu","Nouzz","Asif"];
  List<String> place=["Vegara","Paravakkal","Kunnappali"];
  List<String> money=["33333","55555","999"];
  List<String> medal=[
  "assets/medals/medal1.png",
  "assets/medals/medal2.png",
  "assets/medals/medal3.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("ListView Widgets"),
        centerTitle: true,
        backgroundColor: Colors.grey,

      ),
      body: Column(
        children: [
          SizedBox(height: 50,),

          Container(
            color: Colors.teal,
            height: 100,
            child: ListView.builder(
              itemCount: name.length,
                shrinkWrap: true,
                physics: ScrollPhysics(),
                scrollDirection: Axis.vertical,

                itemBuilder: (context, index) {
                  return Container(
                    // color: Colors.green,
                    child: ListTile(
                      leading: Image.asset(medal[index]),
                      title: Text(name[index],style: TextStyle(fontWeight: FontWeight.bold),),
                      subtitle: Text(place[index],style: TextStyle(color: Colors.grey),),
                      trailing: Text(money[index]),
                    ),
                  );
                },
            ),
          )
        ],
      ),
    );
  }
}
