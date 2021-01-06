import 'package:flutter/material.dart';
import 'package:prime_clone/resources/app_colors.dart';
import 'package:prime_clone/resources/strings.dart';
import 'package:prime_clone/utils/device_size.dart';
import 'package:prime_clone/utils/show_bottom_sheet.dart';
import 'package:share/share.dart';

class DetailPage extends StatefulWidget {
  final String img; String name;
  DetailPage({
    this.img, this.name
  });

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> with TickerProviderStateMixin {



  _onShareWithEmptyOrigin(BuildContext context) async {
    await Share.share("share movie");
  }
bool watchlist = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      //  floatingActionButton: ShowBottomSheet(),
        backgroundColor: AppColors.splashColor1,
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _topPart(),
                _bottomPart()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _tabBuild(){
    return DefaultTabController(
        length: 2,
        initialIndex: 0,
        child: Column(
          children: [
            TabBar(
                tabs:
                [Tab(text:'Language' ), Tab(text: "Genre",)]),
            Container(
                child: TabBarView(
                  children: [
                    Container(color: Colors.red,),
                    Container(color: Colors.blue,),

                  ],
                ))
          ],
        ));
  }

  void _downloadSheet() =>
    showModalBottomSheet<void>(
        context: context,
        builder: (BuildContext builder){
          return ShowBottomSheet();
        }
        );

  Widget _topPart(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(widget.img,fit: BoxFit.cover),

      ],
    );
  }

  Widget _bottomPart(){
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.name,style: TextStyle(color: AppColors.white,fontSize: 25,fontWeight: FontWeight.w800),),
          SizedBox(height: 3,),
          Text(Strings.prime,style: TextStyle(color: Colors.blue,fontSize: 18,fontWeight: FontWeight.w600),),
          SizedBox(height: 5,),
          Text(Strings.includePrime,style: TextStyle(color: AppColors.white,fontSize: 15,fontWeight: FontWeight.w400),),
          SizedBox(height: 18,),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 45,
            child: FlatButton(
              padding: EdgeInsets.all(0),
              onPressed: () {
              },

              color: Color(0xFF1D81B2),
              child: Row(
                children: [
                  Icon(Icons.play_arrow,color: Color(0xffffffff), size: 35,),
                  SizedBox(width: 15,),
                  Text(Strings.watchNow,
                      style: TextStyle(color: Color(0xffffffff), fontSize: 16)),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: (){
                        setState(() {
                          watchlist = !watchlist;
                        });
                      },
                      child: CircleAvatar(
                        radius: 21,
                        backgroundColor: Colors.grey,
                        child: CircleAvatar(
                          child: Icon(watchlist == false?Icons.add:Icons.list,color: AppColors.white,size: 20,),
                          backgroundColor: AppColors.splashColor1,
                        ),
                      ),
                    ),
                    InkWell(

                      onTap: (){
                        _downloadSheet();
                      },
                      child: CircleAvatar(
                        radius: 21,
                        backgroundColor: Colors.grey,
                        child: CircleAvatar(
                          child: Icon(Icons.file_download,color: AppColors.white,size: 20,),
                          backgroundColor: AppColors.splashColor1,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap:() => _onShareWithEmptyOrigin(context),
                      child: CircleAvatar(
                        radius: 21,
                        backgroundColor: Colors.grey,
                        child: CircleAvatar(
                          child: Icon(Icons.share,color: AppColors.white,size: 20,),
                          backgroundColor: AppColors.splashColor1,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top:8.0,right: 8),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(Strings.watchlist,style: TextStyle(color: AppColors.white,fontSize: 13,fontWeight: FontWeight.w400),),
                      Text(Strings.download,style: TextStyle(color: AppColors.white,fontSize: 13,fontWeight: FontWeight.w400),),
                      Text(Strings.share,style: TextStyle(color: AppColors.white,fontSize: 13,fontWeight: FontWeight.w400),),



                    ],
                  ),
                )
              ],
            ),
          ),
          Text(Strings.dummy,style: TextStyle(color: AppColors.white,fontSize: 14,fontWeight: FontWeight.w400),),
          SizedBox(height: 15,),
          Text("IMDb 7.6",style: TextStyle(color: Colors.blueGrey,fontSize: 13,fontWeight: FontWeight.w400),),
          SizedBox(height: 10,),
          Text("2012 120 min",style: TextStyle(color: Colors.blueGrey,fontSize: 13,fontWeight: FontWeight.w400),),
          SizedBox(height: 10,),
          Text("Languages: Audio (2), Subtitles (4)",style: TextStyle(color: Colors.blueGrey,fontSize: 13,fontWeight: FontWeight.w400),),
          // _tabBuild()



        ],
      ),
    )
    ;
  }
}


