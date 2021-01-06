
import 'package:flutter/material.dart';
import 'package:prime_clone/resources/app_colors.dart';
import 'package:prime_clone/resources/strings.dart';
import 'package:prime_clone/routing/routes.dart';

class DownloadView extends StatefulWidget {
  @override
  _DownloadViewState createState() => _DownloadViewState();
}

class _DownloadViewState extends State<DownloadView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.splashColor1,
      appBar: AppBar(
        elevation: 00,
        backgroundColor: AppColors.splashColor1,
        title: Text("0videos . 0secs . 0MB",style: TextStyle(fontSize: 14),),
      ),
      body:Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _topPart()

            ],


          ),
        ),
      ),
    );
  }
  Widget _topPart(){
    return Column(
      children: [
        Image.asset("assets/box.png",scale: 2.5,),
        SizedBox(height: 15,),
        Text(Strings.videoDownload,style: TextStyle(color: AppColors.white,fontSize: 18,fontWeight: FontWeight.w400),),
        SizedBox(height: 15,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(Strings.autoDownloads,style: TextStyle(color: AppColors.white,fontSize: 14,fontWeight: FontWeight.w400),),
            InkWell(
                onTap: (){
                  Navigator.of(context).pushNamed(Routes.AutoDownloads);
                },
                child: Text(Strings.manage,style: TextStyle(color: Colors.blue,fontSize: 14,fontWeight: FontWeight.w400),)),

          ],
        ),
      ],
    );
  }
}
