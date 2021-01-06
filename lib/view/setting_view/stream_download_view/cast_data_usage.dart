import 'package:flutter/material.dart';
import 'package:prime_clone/resources/app_colors.dart';
import 'package:prime_clone/resources/strings.dart';

class CastDataUsage extends StatefulWidget {

  @override
  _CastDataUsageState createState() => _CastDataUsageState();
}

class _CastDataUsageState extends State<CastDataUsage> {
  int _group = 0;


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
                  child: Text(Strings.castData,style: TextStyle(color: AppColors.white,fontWeight: FontWeight.w800,fontSize: 20),),
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
          Text(Strings.castText,style: TextStyle(
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
            title: Text(Strings.unlimited,
                style: TextStyle(
                  color: AppColors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
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
            title: Text(Strings.balanced,
                style: TextStyle(
                  color: AppColors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                )),
            subtitle: Text(Strings.gb80,
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
            title: Text(Strings.dataSaver,
                style: TextStyle(
                  color: AppColors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                )),
            subtitle: Text(Strings.gb70,
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
      ],
    );
  }
  Widget _bottomPart(){
    return Padding(
      padding: const EdgeInsets.only(left:15.0,right: 15,top: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(Strings.changesVideo,style: TextStyle(
            color: Colors.white60,
            fontWeight: FontWeight.w400,
            fontSize: 13,
          )),
          Divider(height: 20, color: Colors.grey[400],
          ),
          Text(Strings.note,style: TextStyle(
            color: Colors.white60,
            fontWeight: FontWeight.w400,
            fontSize: 13,
          )),
          Divider(height:20, color: Colors.grey[400],
          ),
        ],
      ),
    );
  }


}
