import 'package:flutter/material.dart';
import 'package:shop_app/pages/dash_boar/view/dash_boar.dart';
import 'package:shop_app/pages/profiles/views/profile_page.dart';

// ignore: must_be_immutable
class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  bool userStatus = true;

  @override
  Widget build(BuildContext context) {
    return userStatus ? DashBoarPage() : const DashBoarPage();
  }
}
