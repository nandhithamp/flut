import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class TabBarWidget extends StatefulWidget {
  const TabBarWidget({super.key});

  @override
  State<TabBarWidget> createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(title: Text("Tab Bar"),
          centerTitle: true,
          backgroundColor: Colors.green,
          bottom: TabBar(
            tabs: [
              // Tab(text: "Chats",),
              // Tab(text: "Status",),
              // Tab(text: "Calls",)
              Tab(icon: Icon(Icons.chat),),
              Tab(icon: Icon(Icons.settings),),
              Tab(icon: Icon(Icons.call),),
              Tab(icon: Icon(Icons.chat),),
              Tab(icon: Icon(Icons.settings),),
              Tab(icon: Icon(Icons.call),),
              Tab(icon: Icon(Icons.chat),),
              Tab(icon: Icon(Icons.settings),),
              Tab(icon: Icon(Icons.call),),
              Tab(icon: Icon(Icons.chat),),
              Tab(icon: Icon(Icons.settings),),
              Tab(icon: Icon(Icons.call),),
              Tab(icon: Icon(Icons.chat),),
              Tab(icon: Icon(Icons.settings),),
              Tab(icon: Icon(Icons.call),),
              Tab(icon: Icon(Icons.chat),),
              Tab(icon: Icon(Icons.settings),),
              Tab(icon: Icon(Icons.call),),
              Tab(icon: Icon(Icons.chat),),
              Tab(icon: Icon(Icons.settings),),
              Tab(icon: Icon(Icons.call),)
            ],
            indicatorColor: Colors.yellow,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 10,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(30),

              color: Colors.yellow
            ),
            isScrollable: true,
          ),
        ),
        body:TabBarView(
          children: [
            Center(child: Text("Chats page",style: TextStyle(fontSize: 30,))),
            Center(child: Text("Status page",style: TextStyle(fontSize: 30,),)),
            Center(child: Text("Calls page",style: TextStyle(fontSize: 30),)),
          ],
        )
      ),
    );
  }
}
