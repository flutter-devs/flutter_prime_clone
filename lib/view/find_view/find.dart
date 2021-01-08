import 'package:flutter/material.dart';
import 'package:prime_clone/resources/app_colors.dart';
import 'package:prime_clone/resources/strings.dart';
import 'package:prime_clone/routing/routes.dart';
import 'package:prime_clone/utils/custom_textfield.dart';
import 'package:prime_clone/utils/device_size.dart';
import 'package:prime_clone/view/find_view/genre_language.dart';

class Find extends StatefulWidget {
  @override
  _FindState createState() => _FindState();
}

class _FindState extends State<Find> {
  
  bool seeMore = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.splashColor1,
        body: Container(
          decoration: BoxDecoration(
              gradient:LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.1, 0.5,],
                  colors: [Color(0xff1C3D64),Color(0xff161C24)]
              )
          ),
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  _search(),
                  _browse(),
                  _genres(),
                  _language()
                ],
              ),
            ),
          ),
        ),

      ),
    );
  }


  Widget _search(){
    return CustomTextField(
         hintText: Strings.searchBy,
      prefixIcon: Icon(Icons.search,color: AppColors.findSearch,),
      suffixIcon:  IconButton(icon: Icon(Icons.mic,color: AppColors.findSearch,),

      ),
    );
  }
  
  Widget _browse(){
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: 30,vertical: 0
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

           Text(Strings.browseBy,style: TextStyle(color: AppColors.white,fontSize: 18,fontWeight: FontWeight.w800),),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed(Routes.FindMovie);
                  },
                  child: Container(
                    width: DeviceSize.width(context) / 5,
                    height: DeviceSize.width(context) / 10,
                    decoration: BoxDecoration(
                      color: AppColors.buttonColor,
                    ),
                    child: Center(
                      child: Text(
                        Strings.movie,
                        style: TextStyle(
                            color: AppColors.white, fontSize: 15),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10,),
              Expanded(
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed(Routes.FindAmazon);
                  },
                  child: Container(
                    width: DeviceSize.width(context) / 5,
                    height: DeviceSize.width(context) / 10,
                    decoration: BoxDecoration(
                      color: AppColors.buttonColor,
                    ),
                    child: Center(
                      child: Text(
                        Strings.amazonOriginal,
                        style: TextStyle(
                            color: AppColors.white, fontSize: 15),
                      ),
                    ),
                  ),
                ),
              ),

            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed(Routes.FindTv);
                  },
                  child: Container(
                    width: DeviceSize.width(context) / 5,
                    height: DeviceSize.width(context) / 10,
                    decoration: BoxDecoration(
                      color: AppColors.buttonColor,
                    ),
                    child: Center(
                      child: Text(
                        Strings.tv,
                        style: TextStyle(
                            color: AppColors.white, fontSize: 15),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10,),

              Expanded(
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed(Routes.FindKids);
                  },
                  child: Container(
                    width: DeviceSize.width(context) / 5,
                    height: DeviceSize.width(context) / 10,
                    decoration: BoxDecoration(
                      color: AppColors.buttonColor,
                    ),
                    child: Center(
                      child: Text(
                        Strings.kids,
                        style: TextStyle(
                            color: AppColors.white, fontSize: 15),
                      ),
                    ),
                  ),
                ),
              ),

            ],
          )
        ],
      ),
    );
  }

  Widget _genres(){
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: 30,vertical: 20
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(Strings.genres,style: TextStyle(color: AppColors.white,fontSize: 18,fontWeight: FontWeight.w800),),
          Divider(),

          rowGenre(Strings.drama),
          rowGenre(Strings.actionAndAdventure),
          rowGenre(Strings.romance),
          rowGenre(Strings.comedy),
          rowGenre(Strings.thriller),
          
          GestureDetector(
              onTap: (){
                setState(() {
                  seeMore = true;
                });
              },
              child: seeMore==false?Text(Strings.seeMore,style: TextStyle(color: Colors.blue),):
                  rowGenre(Strings.horror, divider: true)
          
          )

        ],
      ),
    );
}
  Widget _language(){
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: 30,vertical: 10
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(Strings.languages,style: TextStyle(color: AppColors.white,fontSize: 18,fontWeight: FontWeight.w800),),
          Divider(),

          rowGenre(Strings.english),
          rowGenre(Strings.hindi),
          rowGenre(Strings.tamil),
          rowGenre(Strings.telugu),
          rowGenre(Strings.gujarati),
          rowGenre(Strings.punjabi),
          rowGenre(Strings.gujarati),
          rowGenre(Strings.bengali,divider: true),


        ],
      ),
    );
  }

Widget rowGenre(String text,{ontap, bool divider = false}){
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: 2
      ),
      child: Column(
        children: [
          InkWell(
            onTap:() =>Navigator.push(context, MaterialPageRoute(builder: (ctx)=>GenreLanguage(genereTitle: text,))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(text,style: TextStyle(color: Colors.blueGrey[400],fontSize: 14),),
                Icon(Icons.arrow_forward_ios,color: Colors.white,size: 15,),
              ],
            ),
          ),
          divider==true?Text(""):Divider(height: 25,color: Colors.white30,)
        ],
      ),
    );
}


}
