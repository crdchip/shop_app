import 'package:flutter/material.dart';
import 'package:shop_app/pages/detail_category/view/detail_category_page.dart';
import 'package:shop_app/pages/home/modules/box_trend_client.dart';
import 'package:shop_app/pages/list_trend_restaurants/view/list_trend_restaurants.dart';

class BoxTrend extends StatefulWidget {
  const BoxTrend({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  State<BoxTrend> createState() => _BoxTrendState();
}

class _BoxTrendState extends State<BoxTrend> {
  bool status = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.size.height * 0.43,
      child: Column(
        children: [
          SizedBox(
            height: widget.size.height * 0.075,
            child: ListTile(
              leading: const Text(
                "Trending Restaurants",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                textDirection: TextDirection.ltr,
              ),
              trailing: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ListTrendRestaurants(),
                    ),
                  );
                },
                child: Text(
                  "See all (9)",
                  style: TextStyle(
                    color: Colors.blueAccent.withOpacity(0.5),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: widget.size.height * 0.35,
            width: widget.size.width,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  var i = index % 2;
                  return Container(
                    width: widget.size.width * 0.85,
                    margin: const EdgeInsets.only(
                      right: 20,
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
                            builder: (context) => const CategoryDetailPage(),
                          ),
                        );
                      },
                      child: BoxTrendClient(
                        size: widget.size,
                        text: i == 0 ? "OPEN" : "CLOSE",
                        color: i == 0 ? Colors.greenAccent : Colors.redAccent,
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
