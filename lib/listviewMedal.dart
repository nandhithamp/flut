import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListViewMedal extends StatelessWidget {
  const ListViewMedal({super.key});

  @override
  Widget build(BuildContext context) {
    final String medal = 'assets/medals/medal.png';
    return  Scaffold(
      appBar: AppBar(
        title: Text('Medal List'),
      ),
      body: ListView.builder(
        itemCount: 10, // Example item count
        itemBuilder: (context, index) {
          return ListTile(
            leading: Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  medal,
                  width: 50,
                  height: 50,
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      '${index + 1}',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            title: Text('Medal ${index + 1}'),
          );
        },
      ),
    );

  }
}
