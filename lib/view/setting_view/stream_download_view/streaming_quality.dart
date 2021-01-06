
import 'package:flutter/material.dart';
import 'package:prime_clone/resources/app_colors.dart';
import 'package:prime_clone/resources/strings.dart';

class StreamingQuality extends StatefulWidget {
  @override
  _StreamingQualityState createState() => _StreamingQualityState();
}

class _StreamingQualityState extends State<StreamingQuality> {
  int _group = 2;

  bool _notify = true;

  void _handleRadioValueChange(int value) {
    setState(() {
      _group = value;
    });
    print("first" + value.toString() + "radiovalue" + _group.toString());
  }
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
                  child: Text(Strings.streamingQuality,style: TextStyle(color: AppColors.white,fontWeight: FontWeight.w800,fontSize: 20),),
                ),
              ),
              _topPart(),
              _radio(),
              _bottomPart()
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
        children: [
          Text(Strings.streamingText,style: TextStyle(
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
  Widget _radio(){
    return Column(
      children: [
        RadioListTile(
            title: Text(Strings.best,
                style: TextStyle(
                  color: AppColors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                )),
            subtitle: Text(Strings.gb46,
                style: TextStyle(
                  color: Color(0xff667C82),
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                )),
            value: 0,
            groupValue: _group,
            onChanged: (value) {
              setState(() {
                _group = value;
              });
              _handleRadioValueChange(value);
            }
        ),
        Padding(
          padding: const EdgeInsets.only(left:15.0,right: 15),
          child: Divider(height: 1, color: Colors.grey[400],
          ),
        ),
        RadioListTile(
            title: Text(Strings.better,
                style: TextStyle(
                  color: AppColors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                )),
            subtitle: Text(Strings.gb26,
                style: TextStyle(
                  color: Color(0xff667C82),
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                )),
            value: 1,
            groupValue: _group,
            onChanged: (value) {
              setState(() {
                _group = value;
              });
              _handleRadioValueChange(value);
            }
        ),
        Padding(
          padding: const EdgeInsets.only(left:15.0,right: 15),
          child: Divider(height: 1, color: Colors.grey[400],
          ),
        ),
        RadioListTile(
            title: Text(Strings.good,
                style: TextStyle(
                  color: AppColors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                )),
            subtitle: Text(Strings.gb18,
                style: TextStyle(
                  color: Color(0xff667C82),
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                )),
            value: 2,
            groupValue: _group,
            onChanged: (value) {
              setState(() {
                _group = value;
              });
            }
        ),
        Padding(
          padding: const EdgeInsets.only(left:15.0,right: 15),
          child: Divider(height: 1, color: Colors.grey[400],
          ),
        ),
        RadioListTile(
            title: Text(Strings.dataSaver,
                style: TextStyle(
                  color: AppColors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                )),
            subtitle: Text(Strings.gb12,
                style: TextStyle(
                  color: Color(0xff667C82),
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                )),
            value: 3,
            groupValue: _group,
            onChanged: (value) {
              setState(() {
                _group = value;
              });
            }
        ),
        Padding(
          padding: const EdgeInsets.only(left:15.0,right: 15),
          child: Divider(height: 1, color: Colors.grey[400],
          ),
        ),
      ],
    );
  }
  Widget _bottomPart(){
    return Column(
      children: [
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
      ],
    );
  }
}
