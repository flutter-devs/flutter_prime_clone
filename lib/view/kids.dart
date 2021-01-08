import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:prime_clone/resources/app_colors.dart';
import 'package:prime_clone/resources/strings.dart';
import 'package:prime_clone/utils/custom_widget.dart';
import 'package:prime_clone/utils/device_size.dart';
import 'package:prime_clone/utils/movie_name.dart';
import 'package:prime_clone/view/detail_page.dart';

class Kids extends StatefulWidget {
  @override
  _KidsState createState() => _KidsState();
}

class _KidsState extends State<Kids> with TickerProviderStateMixin{

  Animation<double> animation;
  AnimationController controller;
  initState() {
    super.initState();
    controller = new AnimationController(
        duration: const Duration(seconds: 2), vsync: this);
    animation = new Tween(begin: 0.0, end: 18.0).animate(controller)
      ..addListener(() {
        setState(() {
          // the state that has changed here is the animation object’s value
        });
      });
    controller.forward();
  }

  dispose() {
    controller.dispose();
    super.dispose();
  }
  List<MovieName> listOfWatch =[
    MovieName("Mr.Bean","assets/bean_kid.jpg",

    ),
    MovieName("Chhota Bheem", "assets/bheem_kid.jpg",
    ),
    MovieName("Motu Patlu",   "assets/motu_kid.jpg",

    ),
    MovieName("Ben 10",  "assets/ben_kid.jpg",
    ),
    MovieName("Doraemon", "assets/doremon_kid.jpeg",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.splashColor1,
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Container(
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _topPart(),
              CustomWidget(child: kidsList(context),name: Strings.watchNextKids,),
              CustomWidget(child: kidsList(context),name: Strings.kidsFamilyMovies,),
              CustomWidget(child: kidsList(context),name: Strings.kidsFamilyTv,),
            ],
          ),
        ),
      ),

    );
  }
  Widget carousel =  new Carousel(
    boxFit: BoxFit.cover,
    images: [
      AssetImage('assets/kids1.jpeg'),
      AssetImage('assets/kids2.jpeg'),
      AssetImage('assets/kids5.jpeg'),
      AssetImage('assets/kids3.jpeg'),
      AssetImage('assets/kids4.jpeg'),
    ],
    dotSize: 5,
    animationCurve: Curves.fastOutSlowIn,
    animationDuration: Duration(seconds: 8),

  );
  Widget _topPart(){
    return Container(
      height: DeviceSize.height(context)/5,
      child: new Stack(
        children: <Widget>[
          carousel,

        ],
      ),
    );
  }
  Widget kidsList(BuildContext context){
    return ListView.builder(
      itemCount: listOfWatch.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, i) {
        return InkWell(
          onTap:() =>Navigator.push(context, MaterialPageRoute(builder: (ctx)=>DetailPage(
            name: listOfWatch[i].name,
            img: listOfWatch[i].image,
          ))),

          child: Container(
            margin:EdgeInsets.only(right: 10.0),
            child: Image.asset(listOfWatch[i].image.toString()),
          ),
        );
      },
    );
  }
}
