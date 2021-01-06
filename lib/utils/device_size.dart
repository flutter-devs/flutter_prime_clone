import 'package:flutter/widgets.dart';

class DeviceSize {
  static double height(BuildContext context) {
    double height;
    height = MediaQuery.of(context).size.height;
    return height;
  }

  static double width(BuildContext context) {
    double width;
    width = MediaQuery.of(context).size.width;
    return width;
  }

  static double statusBarHeight(BuildContext context) {
    double height;
    height = MediaQuery.of(context).padding.top;
    return height;
  }
}