import 'package:flutter/material.dart';
import 'package:prime_clone/resources/app_colors.dart';
import 'package:prime_clone/resources/strings.dart';
import 'package:prime_clone/utils/custom_expansion.dart';
import 'package:prime_clone/utils/device_size.dart';
import 'package:prime_clone/view/find_view/amazon_grid.dart';

class FindAmazonOriginals extends StatefulWidget {
  @override
  _FindAmazonOriginalsState createState() => _FindAmazonOriginalsState();
}

class _FindAmazonOriginalsState extends State<FindAmazonOriginals> {

  GlobalKey<ScaffoldState> _scaffoldKey;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scaffoldKey = GlobalKey();
  }
  bool _isChecked = false;
  void _valueChanged(bool value) => setState(() => _isChecked = value);

  bool _isChecked1 = false;
  void _valueChanged1(bool value) => setState(() => _isChecked1 = value);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        backgroundColor: AppColors.splashColor1,
          endDrawer:Drawer(
              child:Container(
                color: AppColors.splashColor1,
                child:Column(   children: <Widget>[
                  CustomExpansion(
                    title: Text(
                    "Content Type",

                      style: TextStyle(
                          fontFamily: 'Poppinsmedium',
                          fontSize: 16,
                          color: Colors.white),
                    ),
                    children: <Widget>[
                      Container(
                        color: Colors.black12,
                        child: CheckboxListTile(
                          value: _isChecked,
                          onChanged: _valueChanged,
                          title: Text("Movies",style: TextStyle(color: Colors.blueGrey[400]),),
                          controlAffinity: ListTileControlAffinity.trailing,
                          activeColor: Colors.blue,
                        ),
                      ),
                      SizedBox(height: 2,),
                      Container(
                        color: Colors.black12,
                        child: CheckboxListTile(
                          value: _isChecked1,
                          onChanged: _valueChanged1,
                          title: Text("TV Shows",style: TextStyle(color: Colors.blueGrey[400]),),
                          controlAffinity: ListTileControlAffinity.trailing,
                          activeColor: Colors.blue,

                        ),
                      ),
                    ],
                  ),

                ]
          ),)),
        body: Container(
          decoration: BoxDecoration(
              gradient:LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.1, 0.5,],
                  colors: [Color(0xff1C3D64),Color(0xff161C24)]
              )
          ),
            padding: const EdgeInsets.only(
                left: 20,right: 20,top: 20),
            child: Column(
              children: [
                Text(Strings.amazonOriginal,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800,fontSize: 16),),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("10 videos",style: TextStyle(color:AppColors.findSearch,fontSize: 15),),
                    InkWell(
                      onTap: () {
                        _scaffoldKey.currentState.openEndDrawer();

                        //Navigator.of(context).pushNamed(Routes.FindMovie);
                      },
                      child: Container(
                        width: DeviceSize.width(context) / 5,
                        height: DeviceSize.width(context) / 10,
                        decoration: BoxDecoration(
                          color: Colors.blueGrey[400],
                        ),
                        child: Center(
                          child: Text(
                            Strings.filter,
                            style: TextStyle(
                                color: AppColors.white, fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Expanded(child: AmazonGrid()),

              ],
            ),
          ),
      ),
    );
  }
}
