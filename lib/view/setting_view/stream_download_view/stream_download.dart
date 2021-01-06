import 'package:flutter/material.dart';
import 'package:prime_clone/resources/app_colors.dart';
import 'package:prime_clone/resources/strings.dart';
import 'package:prime_clone/routing/routes.dart';

class StreamDownload extends StatefulWidget {
  @override
  _StreamDownloadState createState() => _StreamDownloadState();
}

class _StreamDownloadState extends State<StreamDownload> {
  bool _download = true;
  bool _stream = false;
  bool _notify =true;
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
                  child: Text(Strings.streamAndDownload,style: TextStyle(color: AppColors.white,fontWeight: FontWeight.w800,fontSize: 20),),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    padding:EdgeInsets.all(8),
                    child: Column(
                      children: [
                        _list(),
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

  Widget _list(){
    return Column(
      children: [
        _settingList(Strings.streamingQuality,subtitle:Strings.goodQuality,onTap: (){
          Navigator.of(context).pushNamed(Routes.StreamingQuality);
        }),
        _settingList(Strings.downloadQuality,subtitle:Strings.alwaysAsk,onTap: (){
          Navigator.of(context).pushNamed(Routes.DownloadQuality);

        }),
        _settingList(Strings.castData,subtitle:Strings.unlimited,onTap: (){
          Navigator.of(context).pushNamed(Routes.CastData);

        }),
        SwitchListTile(
          title: Text(Strings.downloadWifi,style: TextStyle(
              color: AppColors.white,fontSize: 14,fontWeight: FontWeight.w800),),
          value: _download,
          activeColor: Colors.blue,
          inactiveTrackColor: Colors.grey,
          onChanged: (bool value) {
            setState(() {
              _download = value;
            });
          },
        ),
        Padding(
          padding: const EdgeInsets.only(left:15.0,right: 15),
          child: Divider(height: 1, color: Colors.grey[400],
          ),
        ),
        SwitchListTile(
          title: Text(Strings.streamWifi,style: TextStyle(
              color: AppColors.white,fontSize: 14,fontWeight: FontWeight.w800),),
          value: _stream,
          activeColor: Colors.blue,
          inactiveTrackColor: Colors.grey,
          onChanged: (bool value) {
            setState(() {
              _stream = value;
            });
          },

        ),
        Padding(
          padding: const EdgeInsets.only(left:15.0,right: 15),
          child: Divider(height: 1, color: Colors.grey[400],
          ),
        ),
        SwitchListTile(
          title: Text(Strings.notifyData,style: TextStyle(
              color: AppColors.white,fontSize: 14,fontWeight: FontWeight.w800),),
          value: _notify,
          activeColor: Colors.blue,
          inactiveTrackColor: Colors.grey,
          onChanged: (bool value) {
            setState(() {
              _notify = value;
            });
          },
        ),
        Padding(
          padding: const EdgeInsets.only(left:15.0,right: 15),
          child: Divider(height: 1, color: Colors.grey[400],
          ),
        ),
        _settingList(Strings.autoDownload,subtitle:Strings.on,onTap: (){
          Navigator.of(context).pushNamed(Routes.AutoDownloads);

        }),


      ],
    );
  }

  Widget _settingList(String title, {onTap ,String subtitle,} ){
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

}
