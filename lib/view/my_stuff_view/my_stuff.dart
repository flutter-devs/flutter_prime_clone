
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prime_clone/resources/app_colors.dart';
import 'package:prime_clone/resources/strings.dart';
import 'package:prime_clone/routing/routes.dart';
import 'package:prime_clone/utils/custom_expansion.dart';
import 'package:prime_clone/utils/device_size.dart';

class MyStuff extends StatefulWidget {
  @override
  _MyStuffState createState() => _MyStuffState();
}

class _MyStuffState extends State<MyStuff> {

  bool isExpnation = false;
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
              _topPart(),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    child: Column(
                      children: [
                        SizedBox(height: 50,),
                        _middlePart(),
                       _bottomPart(),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _topPart(){
    return GestureDetector(
      onTap: (){
        setState(() {
          isExpnation=!isExpnation;
        });
      },
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Row(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            child: Icon(Icons.person,size: 40, color:Color(0xff7ECBEA)),
                            backgroundColor: Color(0xff2274AA),
                          ),
                          SizedBox(width: 15,),
                          Text(
                            "User Name",
                            style: TextStyle(
                              color: AppColors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 18,),
                          ),
                        ],
                      ),
                      Icon(isExpnation==false?Icons.keyboard_arrow_down:Icons.keyboard_arrow_up,color: Colors.white,size: 20,)
                    ],
                  ),
                ),
                isExpnation==false? InkWell(
                    onTap: (){
                      Navigator.of(context).pushNamed(Routes.Setting);

                    },
                    child: Icon(Icons.settings,color: Colors.grey,)):Text("")
              ],
            ),
            isExpnation==true? Container(
              decoration: BoxDecoration(
                 color: Colors.transparent,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top:8.0,left: 18,bottom: 8),
                    child: Row(
                      children: [
                        CircleAvatar(
                          child: Icon(Icons.star,size: 15,color: Color(0xffFBDC75),),
                          radius: 10,
                          backgroundColor: Color(0xffD68D00),
                        ),
                        SizedBox(width: 10,),
                        Text(
                          "kids",
                          style: TextStyle(
                            color: AppColors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 13,),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.white,
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.of(context).pushNamed(Routes.CreateProfile);

                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top:8.0,left: 18,bottom: 8),
                      child: Row(
                        children: [
                          Icon(Icons.add,size: 20,color: Colors.white,),
                          SizedBox(width: 10,),
                          Text(
                            Strings.createProfile,
                            style: TextStyle(
                              color: AppColors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 13,),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.of(context).pushNamed(Routes.ManageProfile);

                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top:8.0,left: 18,bottom: 8),
                      child: Row(
                        children: [
                          Icon(Icons.edit,size: 20,color: Colors.white,),
                          SizedBox(width: 10,),
                          Text(
                            Strings.manageProfile,
                            style: TextStyle(
                              color: AppColors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 13,),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:8.0,left: 18,bottom: 8),
                    child: Row(
                      children: [
                        Icon(Icons.info,size: 20,color: Colors.white),
                        SizedBox(width: 10,),
                        Text(
                          Strings.learnMoreAbout,
                          style: TextStyle(
                            color: AppColors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 13,),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ):Container(),
          ],
        ),
      ),
    );
  }


  Widget _middlePart(){
    return Column(
      children: [
        Text(
          Strings.watchlist,
          style: TextStyle(
            color: AppColors.white,
            fontWeight: FontWeight.w400,
            fontSize: 15,),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 150,right: 150),
          child: Divider(
            thickness: 1,
            height: 0,
            color: Colors.white,
          ),
        ),
        Divider(
          height: 0,
          color: Colors.white70,
        ),
      ],
    );
  }
  Widget _bottomPart(){
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: DeviceSize.height(context)/4.5),
          child: Center(
              child: Image.asset("assets/add_watch.jpg",scale: 3,)
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            Strings.browseNow,
            style: TextStyle(
              color: AppColors.white,
              fontWeight: FontWeight.w600,
              fontSize: 18,),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            Strings.watchListText,
            style: TextStyle(
              color: Color(0xff667C82),
              fontWeight: FontWeight.w400,
              fontSize: 13,),
          ),
        ),
      ],
    );
  }

}
