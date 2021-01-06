import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:prime_clone/resources/app_colors.dart';
import 'package:prime_clone/resources/strings.dart';
import 'package:prime_clone/utils/device_size.dart';
import 'package:prime_clone/utils/movie_name.dart';
import 'package:prime_clone/view/detail_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin{

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
    MovieName("Chemical Hearts", "assets/chemical_movie.jpg",
    ),
    MovieName("Troop Zero", "assets/troop_movie.jpg",
    ),
    MovieName("Breathe", "assets/breathe_movie.jpg",
    ),
    MovieName("Shakuntala Devi", "assets/shakuntala_movie.jpg",
    ),
    MovieName("Gulabo Sitabo", "assets/gulabo_movie.jpg",
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
              _watchTv(),
              _moviesHindi(),
              _language(),
              //_amazonSeries(),


            ],
          ),
        ),
      ),

    );
  }
  Widget carousel =  new Carousel(
    boxFit: BoxFit.cover,
    images: [
      AssetImage('assets/movie1.jpeg'),
      AssetImage('assets/movie2.jpeg'),
      AssetImage('assets/movie3.jpeg'),
      AssetImage('assets/movie4.jpeg'),
      AssetImage('assets/movi4.jpeg'),
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
  Widget _watchTv(){
    return Padding(
      padding: const EdgeInsets.only(left:16,top:16),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(Strings.watchTv,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800,fontSize: 16),),
            SizedBox(height: 10,),
            Container(height: DeviceSize.height(context)/8,width:double.maxFinite,
                child: list(context)),

          ],
        ),
      ),
    );
  }
  Widget _moviesHindi(){
    return Padding(
      padding: const EdgeInsets.only(left:16,top:16),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(Strings.hindiMovies,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800,fontSize: 16),),
            SizedBox(height: 10,),
            Container(height: DeviceSize.height(context)/8,width:double.maxFinite,
                child: list(context)),

          ],
        ),
      ),
    );
  }
  Widget _language(){
    return Padding(
      padding: const EdgeInsets.only(left:16,top:16),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(Strings.watchLanguage,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800,fontSize: 16),),
            SizedBox(height: 10,),
            Container(height: DeviceSize.height(context)/7,width:double.maxFinite,
                child: list(context)),

          ],
        ),
      ),
    );
  }
  Widget _amazonSeries(){
    return Padding(
      padding: const EdgeInsets.only(left:16,top:16),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(Strings.amazonOriginalSeries,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800,fontSize: 16),),
            SizedBox(height: 10,),
            Container(
                height: DeviceSize.height(context)/8,width:double.maxFinite,
                child: list(context)),

          ],
        ),
      ),
    );
  }

  Widget list(BuildContext context){
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
