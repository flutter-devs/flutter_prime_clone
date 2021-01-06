
import 'package:flutter/material.dart';
import 'package:prime_clone/resources/strings.dart';
import 'package:prime_clone/routing/routes.dart';
import 'package:prime_clone/view/download/auto_downloads.dart';
import 'package:prime_clone/view/dashboard.dart';
import 'package:prime_clone/view/download/download_view.dart';
import 'package:prime_clone/view/download/whats_downloads.dart';
import 'package:prime_clone/view/find_view/find.tv.dart';
import 'package:prime_clone/view/find_view/find_amazon_originals.dart';
import 'package:prime_clone/view/find_view/find_kids.dart';
import 'package:prime_clone/view/find_view/find_movie.dart';
import 'package:prime_clone/view/home_view.dart';
import 'package:prime_clone/view/my_stuff_view/create_profile.dart';
import 'package:prime_clone/view/my_stuff_view/manage_profile.dart';
import 'package:prime_clone/view/setting_view/about_legal.dart';
import 'package:prime_clone/view/setting_view/contact_us.dart';
import 'package:prime_clone/view/setting_view/notifications.dart';
import 'package:prime_clone/view/setting_view/parent_controls.dart';
import 'package:prime_clone/view/setting_view/setting.dart';
import 'package:prime_clone/view/setting_view/stream_download_view/cast_data_usage.dart';
import 'package:prime_clone/view/setting_view/stream_download_view/download_quality.dart';
import 'package:prime_clone/view/setting_view/stream_download_view/stream_download.dart';
import 'package:prime_clone/view/setting_view/stream_download_view/streaming_quality.dart';
import 'package:prime_clone/view/splash_view.dart';

class PageRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.SplashRoute:
        return _getPageRoute(Splash(), settings);
      case Routes.DashBoard:
        return _getPageRoute(BottomNavigation(), settings);
      case Routes.Home:
        return _getPageRoute(HomeView(), settings);
      case Routes.FindMovie:
        return _getPageRoute(FindMovie(), settings);
      case Routes.FindKids:
        return _getPageRoute(FindKids(), settings);
      case Routes.FindTv:
        return _getPageRoute(FindTv(), settings);
      case Routes.FindAmazon:
        return _getPageRoute(FindAmazonOriginals(), settings);
      case Routes.AutoDownloads:
        return _getPageRoute(AutoDownloads(), settings);
      case Routes.WhatsDownloads:
        return _getPageRoute(WhatsDownload(), settings);
      case Routes.CreateProfile:
        return _getPageRoute(CreateProfile(), settings);
      case Routes.ManageProfile:
        return _getPageRoute(ManageProfile(), settings);
      case Routes.Setting:
        return _getPageRoute(Setting(), settings);
      case Routes.StreamDownload:
        return _getPageRoute(StreamDownload(), settings);
      case Routes.StreamingQuality:
        return _getPageRoute(StreamingQuality(), settings);
      case Routes.DownloadQuality:
        return _getPageRoute(DownloadQuality(), settings);
      case Routes.CastData:
        return _getPageRoute(CastDataUsage(), settings);
      case Routes.Notification:
        return _getPageRoute(Notifications(), settings);
      case Routes.ParentalControls:
        return _getPageRoute(ParentControls(), settings);
      case Routes.ContactUs:
        return _getPageRoute(ContactUs(), settings);
      case Routes.AboutLegal:
        return _getPageRoute(AboutLegal(), settings);

      default:
      //return _getPageRoute(HomeView(), settings);
        return MaterialPageRoute(
          builder: (BuildContext context) => Scaffold(
            body: Center(
              child: Text('The Page ${settings.name} does not exists.'),
            ),
          ),
        );
    }
  }

  static PageRoute _getPageRoute(Widget child, RouteSettings settings) {
    return _FadeRoute(
        child: child, routeName: settings.name, arguments: settings.arguments);
  }
}

class _FadeRoute extends PageRouteBuilder {
  final Widget child;
  final String routeName;
  final Object arguments;

  _FadeRoute({this.child, this.routeName, this.arguments})
      : super(
    settings: RouteSettings(name: routeName, arguments: arguments),
    pageBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        ) =>
    child,
    transitionsBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        Widget child,
        ) =>
        FadeTransition(
          opacity: animation,
          child: child,
        ),
  );
}
