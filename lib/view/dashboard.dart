import 'package:flutter/material.dart';
import 'package:prime_clone/resources/app_colors.dart';
import 'package:prime_clone/resources/strings.dart';
import 'package:prime_clone/utils/constants.dart';
import 'package:prime_clone/utils/device_size.dart';
import 'package:prime_clone/view/download/download_view.dart';
import 'package:prime_clone/view/find_view/find.dart';
import 'package:prime_clone/view/home_view.dart';
import 'package:prime_clone/view/my_stuff_view/my_stuff.dart';


class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 0;
  bool _isSignedIn = false;
  GlobalKey<ScaffoldState> _scaffoldKey;

  var rating = 3.0;
  List<Widget> tabs;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scaffoldKey = GlobalKey();
    tabs = [
      HomeView(),
      Find(),
      DownloadView(),
      MyStuff(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: AppColors.splashColor1,
      bottomNavigationBar: _bottomNavigator(),

      body: tabs[_currentIndex],
    );
  }

  _bottomNavigator() {
    return Container(
      height: DeviceSize.height(context) / 11.5,
      width: DeviceSize.width(context),
      child: BottomNavigationBar(
        backgroundColor: AppColors.black,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Theme.of(context).accentColor,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
              icon: Icon( _currentIndex == 0?
                      Icons.home
                : Icons.home,
                color: _currentIndex == 0
                    ? Theme.of(context).accentColor
                    : Colors.grey,
              ),
              title: Text("Home")),
          BottomNavigationBarItem(
              icon: Icon( _currentIndex == 1?
              Icons.search
                  : Icons.search,
                color: _currentIndex == 1
                    ? Theme.of(context).accentColor
                    : Colors.grey,
              ),
              title: Text("Find")),
          BottomNavigationBarItem(
              icon:Icon( _currentIndex == 2?
              Icons.file_download
                  : Icons.file_download,
                color: _currentIndex == 2
                    ? Theme.of(context).accentColor
                    : Colors.grey,
              ),
              title: Text("Download")),
          BottomNavigationBarItem(
              icon: Icon( _currentIndex == 3?
              Icons.account_circle
                  : Icons.account_circle,
                color: _currentIndex == 3
                    ? Theme.of(context).accentColor
                    : Colors.grey,
              ),
              title: Text("My Stuff")),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
