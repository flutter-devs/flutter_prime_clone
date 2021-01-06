import 'package:flutter/material.dart';
import 'package:prime_clone/resources/app_colors.dart';
import 'package:prime_clone/resources/strings.dart';

class ParentControls extends StatefulWidget {
  @override
  _ParentControlsState createState() => _ParentControlsState();
}

class _ParentControlsState extends State<ParentControls> {
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
                  child: Text(Strings.parentalControls,style: TextStyle(color: AppColors.white,fontWeight: FontWeight.w800,fontSize: 20),),
                ),
              ),
              _list()
            ],
          ),
        ),
      ),
    );
  }
  Widget _list(){
    return Column(
      children: [
        _parentalList(Strings.viewingRestriction),
        _parentalList(Strings.purchaseRestriction),
        _parentalList(Strings.amazonMaturity),
        _parentalList(Strings.changePin),

      ],
    );
  }
  Widget _parentalList(String title, {onTap } ){
    return Column(
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
