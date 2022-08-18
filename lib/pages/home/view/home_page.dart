import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/pages/home/modules/box_friends.dart';
import 'package:shop_app/pages/home/modules/box_trend.dart';
import 'package:shop_app/pages/home/modules/box_category.dart';

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
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Container(
          height: 50,
          width: size.width,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
              width: 1,
              color: Colors.black.withOpacity(0.2),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 5,
              horizontal: 15,
            ),
            child: TextField(
              textAlign: TextAlign.start,
              textAlignVertical: const TextAlignVertical(y: 1),
              obscureText: false,
              decoration: InputDecoration(
                suffixIcon: Icon(
                  Icons.menu_rounded,
                  color: Colors.black.withOpacity(0.4),
                ),
                prefixIconColor: Colors.black,
                prefixIcon: Icon(
                  CupertinoIcons.search,
                  color: Colors.black.withOpacity(0.4),
                ),
                border: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                hintText: "Find Restaurants",
              ),
            ),
          ),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(
              left: 15,
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
          // HeaderNavbar(size: size)
        ],
      ),
    );
  }
}
