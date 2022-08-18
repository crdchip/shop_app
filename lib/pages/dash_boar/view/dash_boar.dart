import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/pages/home/view/home_page.dart';
import 'package:shop_app/pages/my_favourite/view/my_favourite.dart';
import 'package:shop_app/pages/new_review/view/new_review.dart';
import 'package:shop_app/pages/notifications/view/notifications.dart';
import 'package:shop_app/pages/profiles/views/profile_page.dart';
import 'package:shop_app/res/assets.dart';

class DashBoarPage extends StatefulWidget {
  const DashBoarPage({Key? key}) : super(key: key);

  @override
  State<DashBoarPage> createState() => _DashBoarPageState();
}

class _DashBoarPageState extends State<DashBoarPage> {
  int currentTab = 0;
  bool isFloatbutton = false;
  final List<Widget> screens = [
    HomePage(),
    MyFavouritePage(),
    NewReviewPage(),
    NotificationsPage(),
    ProfilePage(),
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = HomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            isFloatbutton = !isFloatbutton;
            isFloatbutton
                ? currentScreen = NewReviewPage()
                : currentScreen = HomePage();
            currentTab = 2;
          });
        },
        child: isFloatbutton ? Icon(Icons.clear) : Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentScreen = HomePage();
                        currentTab = 0;
                      });
                    },
                    minWidth: 40,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.dashboard,
                          color:
                              currentTab == 0 ? Colors.blueAccent : Colors.grey,
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentScreen = MyFavouritePage();
                        currentTab = 1;
                      });
                    },
                    minWidth: 40,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.chat,
                          color:
                              currentTab == 1 ? Colors.blueAccent : Colors.grey,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MaterialButton(
                        onPressed: () {
                          setState(() {
                            currentScreen = NotificationsPage();
                            currentTab = 3;
                          });
                        },
                        minWidth: 40,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.person,
                              color: currentTab == 3
                                  ? Colors.blueAccent
                                  : Colors.grey,
                            ),
                          ],
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {
                          setState(() {
                            currentScreen = ProfilePage();
                            currentTab = 4;
                          });
                        },
                        minWidth: 40,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.settings,
                              color: currentTab == 4
                                  ? Colors.blueAccent
                                  : Colors.grey,
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
