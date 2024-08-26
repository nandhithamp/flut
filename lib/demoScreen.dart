import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    List<String> image=[
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDGCykEFebMjOJQrHkG4B_dARKnz6JqMhMyw&s",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWgSEPb6TKRMP741oVD3ydHsoenbjQoYVSHA&s",
      "https://mir-s3-cdn-cf.behance.net/projects/404/bc42bc200561439.Y3JvcCwzNzUwLDI5MzMsMCw3MDU.jpg",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcwLN6K0mlQj_K1uLhNmky63eGFYFQek1xxg&s",
      "https://static.toiimg.com/photo/107295063.cms",
      "https://static.toiimg.com/photo/92212071.cms",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDGCykEFebMjOJQrHkG4B_dARKnz6JqMhMyw&s",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWgSEPb6TKRMP741oVD3ydHsoenbjQoYVSHA&s",
      "https://mir-s3-cdn-cf.behance.net/projects/404/bc42bc200561439.Y3JvcCwzNzUwLDI5MzMsMCw3MDU.jpg",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcwLN6K0mlQj_K1uLhNmky63eGFYFQek1xxg&s",
      "https://static.toiimg.com/photo/107295063.cms",
      "https://static.toiimg.com/photo/92212071.cms",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDGCykEFebMjOJQrHkG4B_dARKnz6JqMhMyw&s",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWgSEPb6TKRMP741oVD3ydHsoenbjQoYVSHA&s",
      "https://mir-s3-cdn-cf.behance.net/projects/404/bc42bc200561439.Y3JvcCwzNzUwLDI5MzMsMCw3MDU.jpg",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcwLN6K0mlQj_K1uLhNmky63eGFYFQek1xxg&s",
      "https://static.toiimg.com/photo/107295063.cms",
      "https://static.toiimg.com/photo/92212071.cms",



    ];
    List<String> name=[
      "aaaaaaa",
      "bbbbbbb",
      "ccccccc",
      "ddddddd",
      "eeeeeee",
      "fffffff",
      "aaaaaaa",
      "bbbbbbb",
      "ccccccc",
      "ddddddd",
      "eeeeeee",
      "fffffff",
      "aaaaaaa",
      "bbbbbbb",
      "ccccccc",
      "ddddddd",
      "eeeeeee",
      "fffffff",


    ];
    // int indexNum=0;
    // List tabWidget=[
    //  Text("Home"),
    //   Text("Search"),
    //   Text("More")
    // ];
    return Scaffold(
      backgroundColor: Colors.black,
      body:
      SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                filled: true,
                  fillColor: Colors.black45,
                  suffixIcon: Icon(Icons.search,color: Colors.white,),
                  hintText: "Search for a show,movie,game etc",hintStyle: TextStyle(color: Colors.white),
                  prefixIcon: Icon(Icons.mic,color: Colors.white,),
                  border:InputBorder.none
              ),

            ),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text("Top Searches",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
            ),
            SizedBox(height: 5,),
            ListView.builder(
              itemCount: name.length,
              shrinkWrap: true,
              physics: ScrollPhysics(),
              itemBuilder:(context, index) {
                return Container(

                  child: ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: Container(
                      height: 100,
                        width: 90,
                        child: Image.network(image[index],fit: BoxFit.fill,)),
                    title: Text(name[index],style: TextStyle(color: Colors.white),),
                    trailing: Icon(Icons.play_circle_outline,color: Colors.white,),
                  ),
                );
              },
            )
          ],
        ),


      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: [
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.home),
      //       label: "Home"
      //     ),
      //
      //   ],
      // ),
    );
  }
}
