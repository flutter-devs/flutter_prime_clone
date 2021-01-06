
import 'package:flutter/material.dart';
import 'package:prime_clone/resources/app_colors.dart';
import 'package:prime_clone/resources/strings.dart';
import 'package:prime_clone/routing/routes.dart';

class AutoDownloads extends StatefulWidget {
  @override
  _AutoDownloadsState createState() => _AutoDownloadsState();
}

class _AutoDownloadsState extends State<AutoDownloads> {
  bool _flutter = true;
  bool _delete = false;

  String isDownload = "download";


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              gradient:LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.1, 0.5,],
                  colors: [Color(0xff1C3D64),Color(0xff161C24)]
              )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(16),
                child: Center(
                  child: Text(Strings.autoDownload,style: TextStyle(color: AppColors.white,fontWeight: FontWeight.w800,fontSize: 20),),
                ),
              ),
            _topPart(),
            _bottomPart(),
            ],
          ),
        ),
      ),
    );
  }
  Widget _buildContainer(){
    return Padding(
      padding: const EdgeInsets.only(right:8.0),
      child: Row(
        children: [
          InkWell(
            onTap: (){
              setState(() {
                isDownload = "no Download";
              });
            },
            child: Container(
              height: 20,
              width: 20,
              color: isDownload == "no Download"?Colors.blue: Color(0xff667C82),
              child: Center(child: Text("1",style: TextStyle(color: AppColors.white),)),
            ),
          ),
          SizedBox(width: 3,),
          InkWell(
            onTap: (){
              setState(() {
                isDownload ="download";
              });
            },
            child: Container(
              height: 20,
              width: 20,
              color: isDownload == "download"?Colors.blue: Color(0xff667C82),
              child: Center(child: Text("2",style: TextStyle(color: AppColors.white),)),
            ),
          ),
          SizedBox(width: 3,),
          InkWell(
            onTap: (){
              setState(() {
                isDownload = "no download";
              });
            },
            child: Container(
              height: 20,
              width: 20,
              color: isDownload == "no download"?Colors.blue: Color(0xff667C82),
              child: Center(child: Text("3",style: TextStyle(color:AppColors.white),)),
            ),
          ),
          SizedBox(width: 3,),
          InkWell(
            onTap: (){
              setState(() {
                isDownload = "yes Download";
              });
            },
            child: Container(
              height: 20,
              width: 20,
              color: isDownload == "yes Download"?Colors.blue: Color(0xff667C82),
              child: Center(child: Text("4",style: TextStyle(color: AppColors.white),)),
            ),
          ),
          SizedBox(width: 3,),
          InkWell(
            onTap: (){
              setState(() {
                isDownload = "yes download";
              });
            },
            child: Container(
              height: 20,
              width: 20,
              color: isDownload == "yes download"?Colors.blue: Color(0xff667C82),
              child: Center(child: Text("5",style: TextStyle(color: AppColors.white),)),
            ),
          ),
        ],
      ),
    );
  }
  Widget _topPart(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Padding(
          padding: const EdgeInsets.only(top:12.0,left: 12,right: 12),
          child: Text(Strings.autoDownloadString,style: TextStyle(
            color: Color(0xff667C82),
            fontWeight: FontWeight.w400,
            fontSize: 13,
          )),
        ),
        SizedBox(height: 5,),
        Padding(
          padding: const EdgeInsets.only(top:5.0,left: 12,right: 12),
          child: InkWell(
            onTap: (){
              Navigator.of(context).pushNamed(Routes.WhatsDownloads);

            },
            child: Text(Strings.learnMore,style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.w400,
              fontSize: 13,
            )),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12,right: 12),
          child: Divider(
            height: 30,
            color: Colors.white24,
          ),
        ),
      ],
    );
  }
  Widget _bottomPart(){
    return Column(
      children: [
        SwitchListTile(
          title: Text(Strings.autoDownload,style: TextStyle(
              color: AppColors.white,
              fontWeight: FontWeight.w400,
              fontSize: 15
          ),
          ),
          value: _flutter,
          activeColor: Colors.blue,
          inactiveTrackColor: Colors.grey,
          onChanged: (bool value) {
            setState(() {
              _flutter = value;
            });
          },
          subtitle: Text(_flutter==true?Strings.on:Strings.of,style: TextStyle(
              color: Colors.white24,
              fontSize: 12
          ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12,right: 12),
          child: Divider(
            height: 5,
            color: Colors.white24,
          ),
        ),
        _flutter==true? Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:15.0,left: 12,right: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(Strings.episodesDownload,style: TextStyle(
                        color: AppColors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 15
                    ),
                    ),
                    _buildContainer()
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12,right: 12),
                child: Divider(
                  height: 30,
                  color: Colors.white24,
                ),
              ),
              SwitchListTile(
                title: Text(Strings.deleteEpisodes,style: TextStyle(
                    color: AppColors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 15
                ),
                ),
                value: _delete,
                activeColor: Colors.blue,
                inactiveTrackColor: Colors.grey,
                onChanged: (bool value) {
                  setState(() {
                    _delete = value;
                  });
                },
                subtitle: Text(_delete==false?Strings.of:Strings.on,style: TextStyle(
                    color: Colors.white24,
                    fontSize: 12
                ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12,right: 12),
                child: Divider(
                  height: 5,
                  color: Colors.white24,
                ),
              ),
            ],
          ),
        ):
        Container()
      ],
    );
  }


}
