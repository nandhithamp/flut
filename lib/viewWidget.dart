import 'package:flutter/material.dart';


class viewWidget extends StatelessWidget {
  final List<String> images = [
    "assets/bird3.jpg",
    "assets/bird3.jpg",
    "assets/bird3.jpg",
    "assets/bird2.jpg",
    "assets/bird1.jpg",
    "assets/bird3.jpg",
    "assets/movie1.jpg",
    "assets/movie2.jpg",

  ];

  void _showImageDialog(BuildContext context, String imagePath) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Image.asset(imagePath),
              TextButton(
                child: Text("Close"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid View Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: GridView.builder(
          padding: EdgeInsets.zero,
          itemCount: images.length,
          shrinkWrap: true,
          physics: ScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
          ),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                _showImageDialog(context, images[index]);
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  image: DecorationImage(
                    image: AssetImage(images[index]),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
