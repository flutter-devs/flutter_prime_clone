import 'package:flutter/material.dart';
import 'package:prime_clone/resources/app_colors.dart';
import 'package:prime_clone/resources/strings.dart';
import 'package:prime_clone/utils/device_size.dart';


class CreateProfile extends StatefulWidget {
  @override
  _CreateProfileState createState() => _CreateProfileState();
}

class _CreateProfileState extends State<CreateProfile> {
  bool _flutter = false;
  TextEditingController _name = TextEditingController();
  String text ="";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.splashColor1,
        body: Center(
          child: Column(
            children: [
            _topPart(),
              _search(),
              _bottomPart(),
              Spacer(),
              _button()
            ],
          ),
        ),

      ),
    );
  }

  Widget _search(){
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: 30,vertical: 40
      ),
      child: TextFormField(
        controller: _name,
        style: TextStyle(color: Colors.black),
        cursorColor: Colors.black,
        onChanged: (String value) => setState(() {
          text = value;
        }),
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

  Widget _topPart(){
    return Padding(
      padding: const EdgeInsets.only(top:10.0),
      child: Column(
        children: [
          Text(
            Strings.newText,
            style: TextStyle(
              color: AppColors.white, fontWeight: FontWeight.w800,
              fontSize: 16,),
          ),
          SizedBox(height: 20,),
          _flutter == false?
          CircleAvatar(
            child: Icon(Icons.person,size: 60, color:Color(0xff7ECBEA)),
            radius: 40,
            backgroundColor: Color(0xff2274AA),
          ):
          CircleAvatar(
            child: Icon(Icons.child_care,size: 60, ),
            radius: 40,
            backgroundColor: Colors.purpleAccent[200],
          ),
        ],
      ),
    );
  }

  Widget _bottomPart(){
    return Padding(
      padding: const EdgeInsets.only(left:15.0),
      child: SwitchListTile(
        title: Text(Strings.kidsProfile,style: TextStyle(
            color: AppColors.white,
            fontWeight: FontWeight.w400,
            fontSize: 15
        ),
        ),
        value: _flutter,
        activeColor: Colors.blue,
        inactiveTrackColor: Colors.grey,
        onChanged: (bool value) {
          setState(() {
            _flutter = value;
          });
        },
        subtitle: Text(Strings.learnMore,style: TextStyle(
            color: Colors.blue,
            fontSize: 12
        ),
        ),
      ),
    );
  }

}
