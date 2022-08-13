import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/pages/dash_boar/view/dash_boar.dart';
import 'package:shop_app/pages/home/modules/box_trend_client.dart';
import 'package:shop_app/pages/list_trend_restaurants/modules/search_header.dart';
import 'package:shop_app/widgets/form_header_nav_bar.dart';

class ListTrendRestaurants extends StatefulWidget {
  const ListTrendRestaurants({Key? key}) : super(key: key);

  @override
  State<ListTrendRestaurants> createState() => _ListTrendRestaurantsState();
}

class _ListTrendRestaurantsState extends State<ListTrendRestaurants> {
  bool status = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        // toolbarOpacity: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const DashBoarPage(),
              ),
            );
          },
        ),
        title: const Text(
          "Trending Restaurant",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Stack(
          alignment: AlignmentDirectional.topCenter,
          children: [
            Container(
              margin: const EdgeInsets.only(
                top: 80,
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
                      child: BoxTrendClient(
                        size: size,
                        text: i == 0 ? "OPEN" : "CLOSE",
                        color: i == 0 ? Colors.greenAccent : Colors.redAccent,
                      ),
                    );
                  },
                ),
              ),
            ),
            SearchHeader(),
          ],
        ),
      ),
    );
  }
}
