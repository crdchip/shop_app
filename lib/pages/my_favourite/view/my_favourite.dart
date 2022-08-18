import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/pages/category_detail/category_details.dart';
import 'package:shop_app/pages/detail_category/view/detail_category_page.dart';
import 'package:shop_app/pages/home/modules/box_trend_client.dart';
import 'package:shop_app/pages/my_favourite/modules/list_my_favourite.dart';

class MyFavouritePage extends StatefulWidget {
  MyFavouritePage({Key? key}) : super(key: key);

  @override
  State<MyFavouritePage> createState() => _MyFavouritePageState();
}

class _MyFavouritePageState extends State<MyFavouritePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Trending Restaurant",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        actions: const [
          Icon(
            CupertinoIcons.search,
            color: Colors.black,
          ),
          SizedBox(
            width: 15,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(
                top: 20,
              ),
              child: SizedBox(
                height: size.height,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 5,
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
                                  builder: (context) => CategoryDetailPage()));
                        },
                        child: BoxMyFavourite(
                          size: size,
                          text: i == 0 ? "OPEN" : "CLOSE",
                          color: i == 0 ? Colors.greenAccent : Colors.redAccent,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
