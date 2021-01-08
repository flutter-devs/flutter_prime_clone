import 'package:flutter/material.dart';
import 'package:prime_clone/utils/device_size.dart';

class CustomWidget extends StatefulWidget {
  final Widget child; String name;

  CustomWidget({Key key, this.name, this.child}) : super(key: key);

  @override
  _CustomWidgetState createState() => _CustomWidgetState();
}

class _CustomWidgetState extends State<CustomWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:16,top:16),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.name,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800,fontSize: 16),),
            SizedBox(height: 10,),
            Container(
                height: DeviceSize.height(context)/8,width:double.maxFinite,
                child: widget.child),

          ],
        ),
      ),
    );
  }
}
