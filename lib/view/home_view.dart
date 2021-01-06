import 'package:flutter/material.dart';
import 'package:prime_clone/resources/app_colors.dart';
import 'package:prime_clone/resources/strings.dart';
import 'package:prime_clone/utils/device_size.dart';
import 'package:prime_clone/view/home_page.dart';
import 'package:prime_clone/view/kids.dart';
import 'package:prime_clone/view/movies.dart';
import 'package:prime_clone/view/tv_shows.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView>  with TickerProviderStateMixin {
  TabController _tabController;
  ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: AppColors.splashColor1,
          body: NestedScrollView(
              headerSliverBuilder: (BuildContext context, bool boxIsScrolled) {
                return <Widget>[
                  new SliverAppBar(
                    pinned: true,
                    floating: true,
                    backgroundColor: AppColors.splashColor1,
                    expandedHeight: DeviceSize.height(context) / 7,
                    flexibleSpace: FlexibleSpaceBar(
                      titlePadding: EdgeInsets.only(bottom: DeviceSize.height(context)/16),
                      title: Image.asset("assets/prime.png",scale: 8,),
                      centerTitle: true,
                    ),
                    bottom: TabBar(
                      indicatorWeight: 2,
                      indicatorColor: Colors.white,
                      tabs: [
                        Tab(
                          child: Text(Strings.home,
                              style: TextStyle(
                                fontSize: 15.0,
                              )),
                        ),
                        Tab(
                          child: Text(Strings.tvShow,
                              style: TextStyle(
                                fontSize: 15.0,
                              )),
                        ),
                        Tab(
                          child: Text(Strings.movie,
                              style: TextStyle(
                                fontSize: 15.0,
                              )),
                        ),
                        Tab(
                          child: Text(Strings.kids,
                              style: TextStyle(
                                fontSize: 15.0,
                              )),
                        ),
                      ],
                      controller: _tabController,
                    ),
                  ),
                ];
              },
              body: TabBarView(
                children: [
                  HomePage(),
                  TVShows(),
                  Movies(),
                  Kids(),

                ],
                controller: _tabController,
              ))),
    );
  }
}
