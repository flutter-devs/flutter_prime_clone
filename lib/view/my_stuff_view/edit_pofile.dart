import 'package:flutter/material.dart';
import 'package:prime_clone/resources/app_colors.dart';
import 'package:prime_clone/resources/strings.dart';
import 'package:prime_clone/utils/device_size.dart';

class EditProfile extends StatefulWidget {
  final String editTitle;
  EditProfile({
    this.editTitle
  });
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  TextEditingController _name = TextEditingController();
  String text ="";


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.splashColor1,
        body:
        Container(
          child: Center(
            child: Column(
              children: [
               _topContainer(),
                _search(),
                Divider(
                  height: 0,
                  color: Colors.white70,
                ),
                _bottomPart(),
                Spacer(),
                _button()
              ],
            ),
          ),
        ),

      ),
    );
  }

  Widget _search(){
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: 30,vertical: 20
      ),
      child: TextFormField(
        initialValue: widget.editTitle,
        //controller: _name,
        onChanged: (String value) => setState(() {
          text = value;
        }),
        style: TextStyle(color: Colors.black),
        cursorColor: Colors.black,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(10),
          fillColor: AppColors.white,
          filled: true,
          hintText: Strings.enterName,
          hintStyle: TextStyle(
              color: Colors.grey
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.splashColor1,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.splashColor1,
            ),
          ),
        ),
      ),
    );
  }

  Widget _topContainer(){
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            Strings.editProfiles,
            style: TextStyle(
              color: AppColors.white, fontWeight: FontWeight.w800,
              fontSize: 16,),
          ),
        ),
        SizedBox(height: 20,),
        CircleAvatar(
          child: Icon(Icons.person,size: 60, color:Color(0xff7ECBEA)),
          radius: 40,
          backgroundColor: Color(0xff2274AA),
        ),
      ],
    );
  }

  Widget _button(){
    return SizedBox(
      width: DeviceSize.width(context)/1.3,
      child: FlatButton(
        disabledColor: Colors.black38,
        color: Colors.blueGrey,
        onPressed: text.isEmpty?null:(){},
        child: Text("Save",style: TextStyle(color: Colors.white),),
      ),
    );
  }

  Widget _bottomPart(){
    return Padding(
      padding: const EdgeInsets.only(left:30,right: 30,top: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(Strings.removeProfile,style: TextStyle(color: AppColors.white,
                fontWeight: FontWeight.w400,
                fontSize: 14,),),
              Icon(Icons.delete,color: Colors.white,size: 20,),
            ],
          ),
          SizedBox(height: 5,),
          Text(
            Strings.account,
            style: TextStyle(
              color: Color(0xff667C82),
              fontWeight: FontWeight.w400,
              fontSize: 13,),
          ),
        ],
      ),
    );
  }
}
