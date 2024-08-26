import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CheckBoxWidget extends StatefulWidget {
  const CheckBoxWidget({super.key});

  @override
  State<CheckBoxWidget> createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  bool? isChecked=false;
  bool? isChecked2=false;
  bool? isChecked3=false;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Checkbox Widget"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Checkbox(
                tristate: true,
                  value: isChecked,
                  onChanged: (val){
                    setState(() {
                      isChecked=val;
                    });
                  }
              ),
              Checkbox(
                checkColor: Colors.yellow,
                  value: isChecked2,
                  onChanged: (val){
                    setState(() {
                      isChecked2=val;
                    });
                  }
              ),
              CheckboxListTile(
                title: Text("Sent notification",style: TextStyle(color: Colors.white),),
                  subtitle: Text("Turn on or turn off the notification"),
                  tileColor: Colors.green,
                  value: isChecked3,
                  onChanged: (val){
                    setState(() {
                      isChecked3=val;
                    });
                  }
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CheckboxListTile(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)
                  ),
                    title: Text("Sent notification",style: TextStyle(color: Colors.white),),
                    subtitle: Text("Turn on or turn off the notification"),
                    tileColor: Colors.pink[200],
                    value: isChecked3,
                    onChanged: (val){
                      setState(() {
                        isChecked3=val;
                      });
                    }
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)
                    ),
                    title: Text("Sent notification",style: TextStyle(color: Colors.white),),
                    subtitle: Text("Turn on or turn off the notification"),
                    tileColor: Colors.amber,
                    value: isChecked3,
                    onChanged: (val){
                      setState(() {
                        isChecked3=val;
                      });
                    }
                ),
              )
            ],
        ),
      ),
    );
  }
}
