import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardExercise extends StatelessWidget {
  const CardExercise({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Card Exercise"),
        centerTitle: true,

      ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: Card(
                elevation: 20,
                 shadowColor: Colors.yellowAccent,
                 child:
                Column(
                  children: [
                    ListTile(
                      title: Text("Sachine Tendulkar"),
                      subtitle: Text("22 minutes ago"),
                      leading: CircleAvatar(
                        backgroundImage: AssetImage("assets/sachin.jpg"),
                      ),
                      trailing: Icon(Icons.more_vert),
                    ),
                    ListTile(
                      title: Text("Cute bird.... Some text"),
                    ),
                    ListTile(
                      title: Text("Bird"),
                    ),
                    Image(image: AssetImage('assets/bird1.jpg')),
                    Row(mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.thumb_up),

                        ),
                        IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.thumb_down),
                        )
                      ],
                    )
                  ],

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Card(
                elevation: 20,
                child:
                Column(
                  children: [
                    ListTile(
                      title: Text("Ms Dhoni"),
                      subtitle: Text("10 minutes ago"),
                      leading: CircleAvatar(
                        backgroundImage: AssetImage("assets/dhoni.jpg"),
                      ),
                      trailing: Icon(Icons.more_vert),
                    ),
                    ListTile(
                      title: Text("Cute bird.... Some text"),
                    ),
                    Image(image: AssetImage('assets/bird2.jpg'),),
                    Row(mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          onPressed: (){},
                          icon: Icon(Icons.thumb_up),

                        ),
                        IconButton(
                          onPressed: (){},
                          icon: Icon(Icons.thumb_down),
                        )
                      ],
                    )
                  ],

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Card(
                elevation: 20,
                shadowColor: Colors.teal,
                child:
                Column(
                  children: [
                    ListTile(
                      title: Text("Sachine Tendulkar"),
                      subtitle: Text("22 minutes ago"),
                      leading: CircleAvatar(
                        backgroundImage: AssetImage("assets/sachin.jpg"),
                      ),
                      trailing: Icon(Icons.more_vert),
                    ),
                    ListTile(
                      title: Text("Cute bird.... Some text"),
                    ),
                    Image(image: AssetImage('assets/bird3.jpg')),
                    Row(mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          onPressed: (){},
                          icon: Icon(Icons.thumb_up),

                        ),
                        IconButton(
                          onPressed: (){},
                          icon: Icon(Icons.thumb_down),
                        )
                      ],
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
