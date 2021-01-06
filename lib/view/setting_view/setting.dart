
import 'package:flutter/material.dart';
import 'package:prime_clone/resources/app_colors.dart';
import 'package:prime_clone/resources/strings.dart';
import 'package:prime_clone/routing/routes.dart';

class Setting extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  bool _flutter = true;


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
                  child: Text(Strings.settings,style: TextStyle(color: AppColors.white,fontWeight: FontWeight.w800,fontSize: 20),),
                ),
              ),
              Expanded(
                child: Scrollbar(
                  child: SingleChildScrollView(
                    child: Container(
                      padding:EdgeInsets.all(8),
                      child: Column(
                        children: [
                          _list()
                        ],
                      ),
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

  Widget _list(){
    return Column(
      children: [
        _settingList(Strings.streamAndDownload,subtitle: Strings.manageQuality,onTap: (){
          Navigator.of(context).pushNamed(Routes.StreamDownload);
        }, ),
        _settingList(Strings.notifications,subtitle:Strings.on,onTap: (){
          Navigator.of(context).pushNamed(Routes.Notification);

        }),
        SwitchListTile(
          title: Text(Strings.autoPlay,style: TextStyle(
              color: AppColors.white,fontSize: 14,fontWeight: FontWeight.w800),),
          value: _flutter,
          activeColor: Colors.blue,
          inactiveTrackColor: Colors.grey,
          onChanged: (bool value) {
            setState(() {
              _flutter = value;
            });
          },
          subtitle: Text(Strings.playNextEpisode,style: TextStyle(
              color: Colors.grey[400],fontSize: 12,fontWeight: FontWeight.w400),
          ),
          ),
        Padding(
          padding: const EdgeInsets.only(left:15.0,right: 15),
          child: Divider(height: 1, color: Colors.grey[400],
          ),
        ),
        _settingList(Strings.parentalControls,subtitle: Strings.control,onTap: (){
          Navigator.of(context).pushNamed(Routes.ParentalControls);

        }),
        _settingList(Strings.registeredDevices,subtitle: Strings.seeAll,onTap: (){}),
        _settingList(Strings.clearVideo,subtitle:"",onTap: (){}),
        _settingList(Strings.signed,subtitle: Strings.signOut,onTap: (){
          _showSureToExitDialog(context, Strings.confirmSignOut, Strings.signingOutText);
        }),
        _settingList(Strings.language,subtitle: Strings.english,onTap: (){}),
        _settingList(Strings.contactUs,subtitle:"",onTap: (){
          Navigator.of(context).pushNamed(Routes.ContactUs);

        }),
        _settingList(Strings.aboutAndLegal,subtitle:"",onTap: (){
          Navigator.of(context).pushNamed(Routes.AboutLegal);

        }),
        _settingList(Strings.help,subtitle:"",onTap: (){}),




      ],
    );
  }

  Widget _settingList(String title, {onTap, String subtitle,} ){
    return Column(
      children: [
        ListTile(
          title: Text(title,style: TextStyle(color: AppColors.white,fontSize: 14,fontWeight: FontWeight.w800),),
          subtitle: Text(subtitle,style: TextStyle(color: Colors.grey[400],fontSize: 12,fontWeight: FontWeight.w400),),
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

  _showSureToExitDialog(BuildContext context, String title, String content,) {
    showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          backgroundColor: Colors.grey[800],
          title: Text(title,style: TextStyle(color: AppColors.white),),
          content: Text(content,style: TextStyle(color: AppColors.white),),
          actions: [
            FlatButton(
                child: Text(
                  Strings.cancel,
                  style: TextStyle(fontSize: 16,color: Colors.orange),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                }),
            FlatButton(
                child: Text(
                  Strings.signOutText,

                  style: TextStyle(fontSize: 16,color: Colors.orange),
                ),
                onPressed: () {
                  Navigator.of(context).pop();


                }),
          ],
        );
      },
    );
  }

}
