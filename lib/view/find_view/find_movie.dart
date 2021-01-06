import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:prime_clone/resources/app_colors.dart';
import 'package:prime_clone/resources/strings.dart';
import 'package:prime_clone/utils/device_size.dart';
import 'package:prime_clone/utils/movie_name.dart';
import 'package:prime_clone/view/detail_page.dart';

class FindMovie extends StatefulWidget {
  @override
  _FindMovieState createState() => _FindMovieState();
}

class _FindMovieState extends State<FindMovie>with TickerProviderStateMixin{

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
    MovieName("Adab Mutiyaran","assets/adab_movies.jpg",

    ),
    MovieName("Kabir Singh", "assets/kabir_movies.jpg",
    ),
    MovieName("Jumanji 3", "assets/jumanji_movies.jpg",
    ),
    MovieName("Marjorie Prime",  "assets/maj_movies.jpg",
    ),
    MovieName("Expandables 2", "assets/exp_movies.jpeg",

    ),

  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.splashColor1,
        body: SingleChildScrollView(
          child: Container(
              padding: const EdgeInsets.symmetric(
                  vertical:20),
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                _appBar(),
                _topPart(),
                _watchTv(),
                _moviesHindi(),
                _latestMovies(),
                _thrillerMovie(),

              ],
            ),
          ),
        ),

      ),
    );
  }
  Widget carousel =  new Carousel(
    boxFit: BoxFit.cover,
    images: [
      AssetImage('assets/movie_1.jpg'),
      AssetImage('assets/movie_2.jpg'),
      AssetImage('assets/movie3.jpeg'),
      AssetImage('assets/movie4.jpeg'),
      AssetImage('assets/movie_3.jpeg'),
    ],
    dotSize: 5,
    animationCurve: Curves.fastOutSlowIn,
    animationDuration: Duration(seconds: 8),

  );
  Widget _appBar(){
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(Strings.movie,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800,fontSize: 16),),
        SizedBox(height: 30,),
      ],
    );
  }
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
            Text(Strings.watchNextMovies,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800,fontSize: 16),),
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
  Widget _thrillerMovie(){
    return Padding(
      padding: const EdgeInsets.only(left:16,top:16),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(Strings.thrillerMovies,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800,fontSize: 16),),
            SizedBox(height: 10,),
            Container(height: DeviceSize.height(context)/8,width:double.maxFinite,
                child: list(context)),

          ],
        ),
      ),
    );
  }

  Widget _latestMovies(){
    return Padding(
      padding: const EdgeInsets.only(left:16,top:16),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(Strings.latestMovies,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800,fontSize: 16),),
            SizedBox(height: 10,),
            Container(height: DeviceSize.height(context)/8,width:double.maxFinite,
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