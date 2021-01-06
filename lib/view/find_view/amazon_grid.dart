import 'package:flutter/material.dart';
import 'package:prime_clone/utils/movie_name.dart';
import 'package:prime_clone/view/detail_page.dart';

class AmazonGrid extends StatefulWidget {
  @override
  _AmazonGridState createState() => _AmazonGridState();
}

class _AmazonGridState extends State<AmazonGrid> {

  double _height;
  double _width;

  /*List<String> showImages =[
    "assets/movie_1.jpg",
    "assets/series5.jpeg",
    "assets/movie_2.jpg",
    "assets/series1.jpeg",
    "assets/series2.jpeg",
    "assets/series3.jpeg",
    "assets/movie1.jpeg",
    "assets/movie2.jpeg",
    "assets/movie4.jpeg",
    "assets/series6.jpeg",
  ];*/
  List<MovieName> showImages =[
    MovieName("Parasite","assets/movie_1.jpg",),
    MovieName("Breathe", "assets/series5.jpeg",),
    MovieName("Jack Ryan",   "assets/movie_2.jpg",),
    MovieName("Dark",  "assets/series1.jpeg",),
    MovieName("Made In Heaven", "assets/series2.jpeg",),
    MovieName("Four More Shots", "assets/series3.jpeg",),
    MovieName("Vikram", "assets/movie1.jpeg",),
    MovieName("Nishabdham", "assets/movie2.jpeg",),
    MovieName("New In January", "assets/movie4.jpeg",),
    MovieName("The Wilds", "assets/series6.jpeg",),


  ];

  @override
  Widget build(BuildContext context) {
    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 8,mainAxisSpacing: 4,) ,
      itemCount: showImages.length,
      itemBuilder: (BuildContext context, int index)=> Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          InkWell(
            onTap:() =>Navigator.push(context, MaterialPageRoute(builder: (ctx)=>DetailPage(
              name: showImages[index].name,
              img: showImages[index].image,
            ))),
            child:
            Container(
              height: _height/4.6,
                decoration:BoxDecoration(
              image: DecorationImage(
                image: AssetImage(showImages[index].image,),
                fit: BoxFit.cover,
              ),
            ),
            ),
          ),

        ],
      ),


    );

//
  }
}