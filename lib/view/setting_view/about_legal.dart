
import 'package:flutter/material.dart';
import 'package:prime_clone/resources/app_colors.dart';
import 'package:prime_clone/resources/strings.dart';

class AboutLegal extends StatefulWidget {
  @override
  _AboutLegalState createState() => _AboutLegalState();
}

class _AboutLegalState extends State<AboutLegal> {
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
            children: [
              Container(
                padding: EdgeInsets.all(16),
                child: Center(
                  child: Text(Strings.aboutAndLegal,style: TextStyle(color: AppColors.white,fontWeight: FontWeight.w800,fontSize: 20),),
                ),
              ),
              _topPart(),
              _list()
            ],
          ),
        ),
      ),
    );
  }
  
  Widget _topPart(){
    return Padding(
      padding: const EdgeInsets.only(left:15.0,right: 15,top: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(Strings.version,style: TextStyle(color: AppColors.white,fontWeight: FontWeight.w800,fontSize: 14),),
          Text(Strings.versionNumber,style: TextStyle(color:Colors.white60,fontWeight: FontWeight.w400,fontSize: 14),),
          SizedBox(height: 20,),
          Text(Strings.primeVideo,style: TextStyle(color: Colors.white60,fontWeight: FontWeight.w400,fontSize: 14),),
          Divider(height: 0, color: Colors.grey[400],),

      ],
      ),
    );
  }
  
  Widget _list(){
    return Column(
      children: [
        _aboutList(Strings.termsPrivacy),
        _aboutList(Strings.partyNotice),

      ],
    );
  }

  Widget _aboutList(String title, {onTap } ){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        ListTile(
          title: Text(title,style: TextStyle(color: AppColors.white,fontSize: 14,fontWeight: FontWeight.w800),),
          onTap: onTap,
        ),
        Padding(
          padding: const EdgeInsets.only(left:15.0,right: 15),
          child: Divider(
            height: 1,
            color: Colors.grey[400],
          ),
        ),
      ],
    );
  }
}
