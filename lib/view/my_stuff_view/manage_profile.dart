import 'package:flutter/material.dart';
import 'package:prime_clone/resources/app_colors.dart';
import 'package:prime_clone/resources/strings.dart';
import 'package:prime_clone/view/my_stuff_view/edit_pofile.dart';

class ManageProfile extends StatefulWidget {
  @override
  _ManageProfileState createState() => _ManageProfileState();
}

class _ManageProfileState extends State<ManageProfile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.splashColor1,
        body: Container(
          padding: EdgeInsets.all(16),
          child: Center(
            child: Column(
              children: [
                Text(
                  Strings.editProfiles,
                  style: TextStyle(
                    color: AppColors.white, fontWeight: FontWeight.w900,
                    fontSize: 18,),
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: Row(
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
                    ),
                    Expanded(
                      flex: 1,
                        child: InkWell(
                            onTap:() =>Navigator.push(context, MaterialPageRoute(builder: (ctx)=>EditProfile(editTitle: "User Name",))),

                            child: Icon(Icons.edit,size: 20,color: Colors.white,))),

                  ],
                ),
                SizedBox(height: 20,),

                Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: Row(
                        children: [
                          CircleAvatar(
                            child: Icon(Icons.person,size: 40, color:Colors.red[100]),
                            backgroundColor: Colors.red,
                          ),
                          SizedBox(width: 15,),
                          Text(
                            "Kids",
                            style: TextStyle(
                              color: AppColors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 18,),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                        flex: 1,
                        child: InkWell(
                            onTap:() =>Navigator.push(context, MaterialPageRoute(builder: (ctx)=>EditProfile(editTitle: "Kids",))),
                            child: Icon(Icons.edit,size: 20,color: Colors.white,))),

                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );


  }
}
