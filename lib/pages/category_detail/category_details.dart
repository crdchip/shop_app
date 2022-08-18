import 'dart:math';

import 'package:flutter/material.dart';
import 'package:shop_app/pages/detail_category/view/detail_category_page.dart';
import 'package:shop_app/pages/home/modules/box_trend_client.dart';

class CategoryDetails extends StatefulWidget {
  const CategoryDetails({Key? key}) : super(key: key);

  @override
  State<CategoryDetails> createState() => _CategoryDetailsState();
}

class _CategoryDetailsState extends State<CategoryDetails> {
  int _currentIndex = 0;
  late PageController _pageController;
  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  List list = [
    "Italian",
    "Chinese",
    "Maxian",
    "Thai",
    "Arabian",
    "European",
    "India",
    "American",
    "Korean",
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            Colors.primaries[Random().nextInt(Colors.primaries.length)],
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Container(
          padding: EdgeInsets.only(left: size.width * 0.2),
          height: size.height * 0.1,
          width: size.width,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Center(child: buildText(_currentIndex == index, index));
            },
            itemCount: 9,
          ),
        ),
        centerTitle: true,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: 10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.white.withOpacity(0.8),
                    padding: EdgeInsets.only(
                      left: size.width * 0.3,
                      top: 5,
                    ),
                    alignment: Alignment.center,
                    width: size.width,
                    height: 10,
                    child: ListView.builder(
                      itemCount: 9,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: ((context, index) {
                        return buildIndicator(index == _currentIndex);
                      }),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SizedBox(
                height: size.height,
                child: PageView.builder(
                  controller: _pageController,
                  onPageChanged: (index) {
                    // print("$index");
                    setState(
                      () {
                        _currentIndex = index;
                        // print("$_currentIndex");
                      },
                    );
                  },
                  itemBuilder: (context, index) {
                    return Container(
                        padding: const EdgeInsets.only(
                          top: 20,
                          left: 15,
                          right: 15,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: size.height * 0.85,
                              child: ListView.builder(
                                scrollDirection: Axis.vertical,
                                itemCount: 9,
                                itemBuilder: (context, index) {
                                  var i = index % 2;
                                  return Container(
                                    width: size.width * 0.85,
                                    margin: const EdgeInsets.only(
                                      bottom: 20,
                                    ),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.grey,
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.6),
                                          offset: Offset.zero,
                                          blurRadius: 5.0,
                                          // spreadRadius: 2.0,
                                        )
                                      ],
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const CategoryDetailPage(),
                                          ),
                                        );
                                      },
                                      child: BoxTrendClient(
                                        size: size,
                                        text: i == 0 ? "OPEN" : "CLOSE",
                                        color: i == 0
                                            ? Colors.greenAccent
                                            : Colors.redAccent,
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ));
                  },
                  itemCount: 9,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildIndicator(bool isActive) {
    return Padding(
      padding: const EdgeInsets.only(right: 2),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        height: 2,
        width: 15,
        decoration: BoxDecoration(
          color: isActive ? Colors.blueAccent.withOpacity(0.8) : Colors.grey,
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    );
  }

  Widget buildText(bool isActive, int i) {
    return Text(
      isActive ? "${list[i]}" : "",
      style: const TextStyle(
        color: Colors.black,
        fontSize: 22,
      ),
    );
  }
}
