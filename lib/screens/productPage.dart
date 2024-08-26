import 'package:flutter/material.dart';
class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product page"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child:
              Text('Product page',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.purple,
                    fontWeight: FontWeight.w500
                ),
              )
          ),
          ElevatedButton(
              onPressed: (){
                Navigator.pop(context);
              },
              child: Text('Home'))
        ],
      ),

    );
  }
}
