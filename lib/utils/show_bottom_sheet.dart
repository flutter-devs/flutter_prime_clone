import 'package:flutter/material.dart';
import 'package:prime_clone/resources/app_colors.dart';
import 'package:prime_clone/resources/strings.dart';

class ShowBottomSheet extends StatefulWidget {
  @override
  _ShowBottomSheetState createState() => _ShowBottomSheetState();
}

class _ShowBottomSheetState extends State<ShowBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Container(
        color: AppColors.splashColor1,
        child: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 30.0, bottom: 10),
                  child: Text(Strings.downloadOption,
                    style: TextStyle(color: AppColors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w800),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Text(Strings.availableSpace,
                    style: TextStyle(color: Colors.blueGrey[400],
                        fontSize: 13,
                        fontWeight: FontWeight.w400),),
                ),

                RadioListTile(
                    title: Text.rich(TextSpan(
                      children: <TextSpan>[
                        new TextSpan(
                          text: Strings.best,
                          style: new TextStyle(
                            color: AppColors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                        ),
                        new TextSpan(
                            text: Strings.bestApprox,
                            style: TextStyle(
                              color: Color(0xff667C82),
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                            )
                        ),
                      ],
                    ),
                    ),
                    value: 0,
                    groupValue: _group,
                    onChanged: (value) {
                      setState(() {
                        _group = value;
                      });
                      _handleRadioValueChange(value);
                    }
                ),
                RadioListTile(
                    title: Text.rich(TextSpan(
                      children: <TextSpan>[
                        new TextSpan(
                          text: Strings.better,
                          style: new TextStyle(
                            color: AppColors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                        ),
                        new TextSpan(
                            text: Strings.betterApprox,
                            style: TextStyle(
                              color: Color(0xff667C82),
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                            )
                        ),
                      ],
                    ),
                    ),
                    value: 1,
                    groupValue: _group,
                    onChanged: (value) {
                      setState(() {
                        _group = value;
                      });
                      _handleRadioValueChange(value);
                    }
                ),
                RadioListTile(
                    title: Text.rich(TextSpan(
                      children: <TextSpan>[
                        new TextSpan(
                          text: Strings.good,
                          style: new TextStyle(
                            color: AppColors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                        ),
                        new TextSpan(
                            text: Strings.goodApprox,
                            style: TextStyle(
                              color: Color(0xff667C82),
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                            )
                        ),
                      ],
                    ),
                    ),
                    value: 2,
                    groupValue: _group,
                    onChanged: (value) {
                      setState(() {
                        _group = value;
                      });
                    }
                ),
                RadioListTile(
                    title: Text.rich(TextSpan(
                      children: <TextSpan>[
                        new TextSpan(
                          text: Strings.dataSaver,
                          style: new TextStyle(
                            color: AppColors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                        ),
                        new TextSpan(
                            text: Strings.dataApprox,
                            style: TextStyle(
                              color: Color(0xff667C82),
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                            )
                        ),
                      ],
                    ),
                    ),
                    value: 3,
                    groupValue: _group,
                    onChanged: (value) {
                      setState(() {
                        _group = value;
                      });
                    }
                ),
                CheckboxListTile(
                  value: _isChecked,
                  onChanged: _valueChanged,
                  title: Text(Strings.defaultSetting,
                    style: TextStyle(color: Color(0xff667C82),
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),),
                  controlAffinity: ListTileControlAffinity.leading,
                  activeColor: Colors.blue,
                ),
                SizedBox(height: 18,),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30,bottom: 30),
                  child: SizedBox(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
                    height: 45,
                    child: FlatButton(
                      padding: EdgeInsets.all(0),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      color: Color(0xff667C82),
                      child: Text(Strings.startDownload,
                          style: TextStyle(color: Color(0xffffffff),
                              fontSize: 16)),
                    ),
                  ),
                ),
              ]
          ),
        ),
      ),
    );
  }

  int _group = 0;
  bool _isChecked = false;

  void _handleRadioValueChange(int value) {
    setState(() {
      _group = value;
    });
    print("first" + value.toString() + "radiovalue" + _group.toString());
  }
  void _valueChanged(bool value) => setState(() => _isChecked = value);


}
