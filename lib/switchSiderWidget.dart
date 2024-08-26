import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SwitchSiderWidget extends StatefulWidget {

  const SwitchSiderWidget({super.key});

  @override
  State<SwitchSiderWidget> createState() => _SwitchSiderWidgetState();
}

class _SwitchSiderWidgetState extends State<SwitchSiderWidget> {
  bool isSliderActive=true;
  double sliderValue=0.0;

  bool isDarkmode=true;
  double dmodevalue=0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Switch sider"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            SwitchListTile(
              title: Text("Switch Slider"),
                value: isSliderActive,
                onChanged:(value){
                setState(() {
                  isSliderActive=value;
                });
                }
            ),
         if(isSliderActive)
              Slider(
                value:sliderValue,
                min: 0,
                max: 100,
                onChanged: (value){
                  setState(() {
                    sliderValue=value;
                  });
                },
              )
            else
              Slider(value: sliderValue,
                  min: 50,
                  max: 150,
                  onChanged: (value){
                setState(() {
                  sliderValue=value;
                });
                  }
              ),
            Text("Slider value:${sliderValue.toStringAsFixed(2)}"),
            SizedBox(height: 20,),
            SwitchListTile(tileColor: Colors.black12,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              title: Text("Dark mode"),
                value: isDarkmode,
                onChanged:(value){
                setState(() {
                  isDarkmode=value;
                });
                }
            ),
            if(isDarkmode)
              Slider(value: dmodevalue,
                  min: 0,
                  max: 100,

                  onChanged: (value){
                setState(() {
                  dmodevalue=value;
                });
                  }
              )
            else
              Slider(value: dmodevalue,
                  min:50,
                  max: 100,
                  onChanged: (value){
                setState(() {
                  dmodevalue=value;
                });
                  }
              ),
            Text("Dmode value:${dmodevalue.toStringAsFixed(2)}")

          ],
        ),
      ),
    );
  }
}
