import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:prime_clone/resources/app_colors.dart';
import 'package:prime_clone/utils/constants.dart';


class CustomTextField extends StatefulWidget {
  TextEditingController controller;
  Function validator;
  bool autoValidate = false;
  String hintText;
  TextInputType keyboardType;
  IconButton suffixIcon;
  Icon prefixIcon;
  int maxLines;

  CustomTextField(
      {
      @required this.hintText,
      this.keyboardType,
      this.maxLines,
      this.suffixIcon,
      this.prefixIcon,
     });

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: 30,vertical: 30
      ),
      child: TextField(
        controller: widget.controller,
        style: TextStyle(color: AppColors.white,),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(10),
          fillColor: AppColors.findSearchTextField.withOpacity(0.4),
          filled: true,
          suffixIcon: widget.suffixIcon,
          prefixIcon: widget.prefixIcon,
          hintText: widget.hintText,
          hintStyle: TextStyle(color: AppColors.findSearchText),
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
}
