import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/pages/dash_boar/view/dash_boar.dart';
import 'package:shop_app/pages/filter/modules/bottom_nav.dart';
import 'package:shop_app/pages/filter/modules/distance.dart';
import 'package:shop_app/pages/filter/modules/rating_star.dart';
import 'package:shop_app/pages/filter/modules/select_category.dart';

class Filter extends StatefulWidget {
  const Filter({Key? key}) : super(key: key);

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black.withOpacity(0.7),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(
            "Filter",
            style: TextStyle(
              color: Colors.black.withOpacity(0.7),
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          actions: [
            Icon(
              CupertinoIcons.clear,
              color: Colors.black.withOpacity(0.7),
            ),
            const SizedBox(
              width: 15,
            ),
          ],
        ),
        body: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            SizedBox(
              height: size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SelectCategory(size: size),
                  Distance(size: size),
                  RatingStar(
                    size: size,
                  )
                ],
              ),
            ),
            BottomNavClient(size: size),
          ],
        ));
  }
}
