import 'package:flutter/material.dart';
import 'package:shop_app/pages/dash_boar/view/dash_boar.dart';
import 'package:shop_app/pages/detail_category/view/detail_category_page.dart';
import 'package:shop_app/pages/filter/view/filter.dart';
import 'package:shop_app/pages/gps/gps_page.dart';
import 'package:shop_app/pages/list_trend_restaurants/view/list_trend_restaurants.dart';

// ignore: must_be_immutable
class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  bool userStatus = true;

  @override
  Widget build(BuildContext context) {
    return userStatus ? DashBoarPage() : const DashBoarPage();
  }
}
