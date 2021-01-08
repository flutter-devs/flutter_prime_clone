import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:prime_clone/resources/app_colors.dart';
import 'package:prime_clone/resources/strings.dart';
import 'package:prime_clone/utils/custom_widget.dart';
import 'package:prime_clone/utils/device_size.dart';
import 'package:prime_clone/utils/movie_name.dart';
import 'package:prime_clone/view/detail_page.dart';

class FindTv extends StatefulWidget {
  @override
  _FindTvState createState() => _FindTvState();
}

class _FindTvState extends State<FindTv> with TickerProviderStateMixin{

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
    MovieName("Dark", "assets/dark_show.jpg",
    ),
    MovieName("Made In Heaven", "assets/heaven_show.jpg",
    ),
    MovieName("Mirzapur", "assets/mirzapur_show.jpg",
    ),
    MovieName("Catastrophe", "assets/catas_show.jpg",
    ),
    MovieName("Breathe",  "assets/breath_show.jpg",
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
                CustomWidget(child: tvShowsList(context),name: Strings.watchNextTv,),
                CustomWidget(child: tvShowsList(context),name: Strings.amazonOriginalSeries,),
                CustomWidget(child: tvShowsList(context),name: Strings.thrillerTv,),
                CustomWidget(child: tvShowsList(context),name: Strings.tvShows,),
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
      AssetImage('assets/series3.jpeg'),
      AssetImage('assets/movie2.jpeg'),
      AssetImage('assets/series6.jpeg'),
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
  Widget _appBar(){
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(Strings.tvShow,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800,fontSize: 16),),
        SizedBox(height: 30,),
      ],
    );
  }
  Widget tvShowsList(BuildContext context){
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
