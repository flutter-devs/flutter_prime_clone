import 'package:flutter/material.dart';
import 'package:prime_clone/resources/app_colors.dart';
import 'package:prime_clone/resources/strings.dart';

class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  bool _allow = true;
  bool _downloads =true;
  bool _watchlist = true;
  bool _newApp =true;
  bool _special =true;
  bool _recommended =true;
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
                  child: Text(Strings.notifications,style: TextStyle(color: AppColors.white,fontWeight: FontWeight.w800,fontSize: 20),),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      _topPart(),
                      _bottomPart()
                    ],
                  ),
                ),
              )


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
          Text(Strings.notificationsText,style: TextStyle(
            color: Colors.white60,
            fontWeight: FontWeight.w400,
            fontSize: 13,
          )),
          Divider(height: 25, color: Colors.grey[400],
          ),

        ],
      ),
    );
  }
  Widget _bottomPart(){
    return Column(
      children: [
        SwitchListTile(
          title: Text(Strings.allowNotification,style: TextStyle(
              color: AppColors.white,fontSize: 14,fontWeight: FontWeight.w800),),
          value: _allow,
          activeColor: Colors.blue,
          inactiveTrackColor: Colors.grey,
          onChanged: (bool value) {
            setState(() {
              _allow = value;
            });
          },
        ),
        Padding(
          padding: const EdgeInsets.only(left:15.0,right: 15),
          child: Divider(height: 1, color: Colors.grey[400],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left:15.0,right: 15),
          child: Divider(height: 30, color: Colors.grey[400],
          ),
        ),
        _allow == true?
        Container(
          child: Column(
            children: [
              SwitchListTile(
                title: Text(Strings.downloads,style: TextStyle(
                    color: AppColors.white,fontSize: 14,fontWeight: FontWeight.w800),),
                value: _downloads,
                activeColor: Colors.blue,
                inactiveTrackColor: Colors.grey,
                onChanged: (bool value) {
                  setState(() {
                    _downloads = value;
                  });
                },
              ),
              Padding(
                padding: const EdgeInsets.only(left:15.0,right: 15),
                child: Divider(height: 1, color: Colors.grey[400],
                ),
              ),
              SwitchListTile(
                title: Text(Strings.yourWatchlist,style: TextStyle(
                    color: AppColors.white,fontSize: 14,fontWeight: FontWeight.w800),),
                value: _watchlist,
                activeColor: Colors.blue,
                inactiveTrackColor: Colors.grey,
                onChanged: (bool value) {
                  setState(() {
                    _watchlist = value;
                  });
                },
              ),
              Padding(
                padding: const EdgeInsets.only(left:15.0,right: 15),
                child: Divider(height: 1, color: Colors.grey[400],
                ),
              ),
              SwitchListTile(
                title: Text(Strings.recommended,style: TextStyle(
                    color: AppColors.white,fontSize: 14,fontWeight: FontWeight.w800),),
                value: _recommended,
                activeColor: Colors.blue,
                inactiveTrackColor: Colors.grey,
                onChanged: (bool value) {
                  setState(() {
                    _recommended = value;
                  });
                },
              ),
              Padding(
                padding: const EdgeInsets.only(left:15.0,right: 15),
                child: Divider(height: 1, color: Colors.grey[400],
                ),
              ),
              SwitchListTile(
                title: Text(Strings.newApp,style: TextStyle(
                    color: AppColors.white,fontSize: 14,fontWeight: FontWeight.w800),),
                value: _newApp,
                activeColor: Colors.blue,
                inactiveTrackColor: Colors.grey,
                onChanged: (bool value) {
                  setState(() {
                    _newApp = value;
                  });
                },
              ),
              Padding(
                padding: const EdgeInsets.only(left:15.0,right: 15),
                child: Divider(height: 1, color: Colors.grey[400],
                ),
              ),
              SwitchListTile(
                title: Text(Strings.specialOffers,style: TextStyle(
                    color: AppColors.white,fontSize: 14,fontWeight: FontWeight.w800),),
                value: _special,
                activeColor: Colors.blue,
                inactiveTrackColor: Colors.grey,
                onChanged: (bool value) {
                  setState(() {
                    _special = value;
                  });
                },
              ),
              Padding(
                padding: const EdgeInsets.only(left:15.0,right: 15),
                child: Divider(height: 1, color: Colors.grey[400],
                ),
              ),
            ],
          ),
        ):Container(),
      ],
    );
  }
}
