import 'package:flutter/material.dart';
import 'package:prime_clone/resources/app_colors.dart';
import 'package:prime_clone/resources/strings.dart';

class WhatsDownload extends StatefulWidget {
  @override
  _WhatsDownloadState createState() => _WhatsDownloadState();
}

class _WhatsDownloadState extends State<WhatsDownload> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.splashColor1,
      appBar: AppBar(
        title: Text(Strings.whatDownload),
        backgroundColor: AppColors.splashColor1,
        elevation: 0.0,
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text(Strings.whatDownloadText,style: TextStyle(
                color: Color(0xff667C82),
                fontWeight: FontWeight.w400,
                fontSize: 13,
              )),
              SizedBox(height: 15,),
              _topBuild()
            ],
          ),
        ),
      ),
    );
  }

  Widget _topBuild(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 0,
              child: Text("•", style: TextStyle(
                fontSize: 17, color: Colors.white
              ),)
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              flex: 3,
              child: Text.rich(TextSpan(
                children: <TextSpan>[
                  new TextSpan(
                    text: Strings.dataSmart,
                    style: new TextStyle(
                      color: AppColors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                    ),
                  ),
                  new TextSpan(
                      text: Strings.dataSmartText,
                      style: TextStyle(
                        color: Color(0xff667C82),
                        fontWeight: FontWeight.w400,
                        fontSize: 13,
                      )
                  ),
                ],
              ),
              ),
            ),

          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                flex: 0,
                child: Text("•", style: TextStyle(
                    fontSize: 17, color: Colors.white
                ),)
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              flex: 3,
              child: Text.rich(TextSpan(
                children: <TextSpan>[
                  new TextSpan(
                    text: Strings.spaceSmart,
                    style: new TextStyle(
                      color: AppColors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                    ),
                  ),
                  new TextSpan(
                      text: Strings.spaceSmartText,
                      style: TextStyle(
                        color: Color(0xff667C82),
                        fontWeight: FontWeight.w400,
                        fontSize: 13,
                      )
                  ),
                ],
              ),
              ),
            ),

          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                flex: 0,
                child: Text("•", style: TextStyle(
                    fontSize: 17, color: Colors.white
                ),)
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              flex: 3,
              child: Text.rich(TextSpan(
                children: <TextSpan>[
                  new TextSpan(
                    text: Strings.yourControl,
                    style: new TextStyle(
                      color: AppColors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                    ),
                  ),
                  new TextSpan(
                      text: Strings.yourControlText,
                      style: TextStyle(
                        color: Color(0xff667C82),
                        fontWeight: FontWeight.w400,
                        fontSize: 13,
                      )
                  ),
                ],
              ),
              ),
            ),

          ],
        ),
      ],
    );
  }
}
