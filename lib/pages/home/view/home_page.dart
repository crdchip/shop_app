import 'package:flutter/material.dart';
import 'package:shop_app/pages/home/modules/box_friends.dart';
import 'package:shop_app/pages/home/modules/box_trend.dart';
import 'package:shop_app/pages/home/modules/box_category.dart';
import 'package:shop_app/widgets/form_header_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(
              left: 15,
              top: 85,
            ),
            child: SingleChildScrollView(
              // scrollDirection: Axis.vertical,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: size.height,
                    child: Column(
                      children: [
                        BoxTrend(size: size),
                        BoxCategory(size: size),
                        BoxFriends(size: size)
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          HeaderNavbar(size: size)
        ],
      ),
    );
  }
}
