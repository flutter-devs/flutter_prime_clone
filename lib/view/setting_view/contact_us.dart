import 'package:flutter/material.dart';
import 'package:prime_clone/resources/strings.dart';

class ContactUs extends StatefulWidget {
  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor:  Colors.grey[800],
          body: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(Strings.tellUs,style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w800),),
                SizedBox(height: 10,),
                _tellUs()

              ],
            ),
          ),
        ),
    );
  }

  Widget _tellUs(){
    return Column(
      children: [
        _bottomContainer(Strings.managePrime),
        _bottomContainer(Strings.appIssues),
        _bottomContainer(Strings.primeMember),
        _bottomContainer(Strings.giveFeedback,divider: true),

      ],
    );
  }


  Widget _bottomContainer(String text,{ bool divider = false}){
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey,),
      ),
        child:Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:10.0,left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(text,style: TextStyle(color: Colors.white,fontSize: 14,),),
                    Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 15,),
                  ],
                ),
              ),
              divider==true?Text(""):Divider()
            ],
          ),
        ),
    );
  }
}
