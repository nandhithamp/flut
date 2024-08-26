import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StateFulWidget extends StatefulWidget {
  const StateFulWidget({super.key});

  @override
  State<StateFulWidget> createState() => _StateFulWidgetState();
}

class _StateFulWidgetState extends State<StateFulWidget> {
  var dspText="Hello World";
  var iconColorLike=Colors.black;
  var iconColorDisLike=Colors.black;

  void changeText(){
    setState(() {
      dspText="Good morning";
    });
  }
  void changeTextHello(){
    setState(() {
      dspText="Hello world";
    });
  }

  void changeClrLike(){
    setState(() {
      if(iconColorLike==Colors.black){
        iconColorLike=Colors.blue;
      }
      else{
        iconColorLike=Colors.black;
      }
    });
  }
  void changeclrDisLike(){
    setState(() {
      if(iconColorDisLike==Colors.black){
        iconColorDisLike=Colors.red;
      }else{
        iconColorDisLike=Colors.black;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Stateful widget'),
        centerTitle: true,
      ),
      body:
      Center(
        child:
        Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(dspText,style: TextStyle(
              fontSize: 30
            ),),
            ElevatedButton(
                onPressed: (){
                  changeText();
                },
                child:
                Text("Change Text",style: TextStyle(
                    fontSize: 20)
            )),
            ElevatedButton(
                onPressed: (){
                  changeTextHello();
                },
                child:
                Text("Good morning",style: TextStyle(
                    fontSize: 20)
                )),

            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: (){
                      changeClrLike();
                    },
                    icon: Icon(Icons.thumb_up),
                  iconSize: 40,
                  color: iconColorLike,
                ),
                IconButton(
                    onPressed: (){
                      changeclrDisLike();
                    },
                    icon: Icon(Icons.thumb_down),
                  color: iconColorDisLike,
                  iconSize: 40,
                )
              ],
            )
          ],
        ),
      ),

    );
  }
}
