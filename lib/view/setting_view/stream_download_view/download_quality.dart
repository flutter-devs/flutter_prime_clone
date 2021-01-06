import 'package:flutter/material.dart';
import 'package:prime_clone/resources/app_colors.dart';
import 'package:prime_clone/resources/strings.dart';

class DownloadQuality extends StatefulWidget {
  @override
  _DownloadQualityState createState() => _DownloadQualityState();
}

class _DownloadQualityState extends State<DownloadQuality> {
  int _group = 4;

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
                  child: Text(Strings.downloadQuality,style: TextStyle(color: AppColors.white,fontWeight: FontWeight.w800,fontSize: 20),),
                ),
              ),
              _radio()
            ],
          ),
        ),
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
            subtitle: Text(Strings.aboutGb46,
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
            subtitle: Text(Strings.aboutGb26,
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
            subtitle: Text(Strings.aboutGb18,
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
            subtitle: Text(Strings.aboutGb12,
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
        RadioListTile(
            title: Text(Strings.alwaysAsk,
                style: TextStyle(
                  color: AppColors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                )),
            subtitle: Text(Strings.selectQuality,
                style: TextStyle(
                  color: Color(0xff667C82),
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                )),
            value: 4,
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

}
