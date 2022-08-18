import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/pages/detail_category/modules/category_details_box.dart';
import 'package:shop_app/pages/detail_category/modules/header_nav.dart';
import 'package:shop_app/pages/detail_category/modules/list_friend_client.dart';
import 'package:shop_app/pages/detail_category/modules/menu_photo_detail_category.dart';
import 'package:shop_app/widgets/buttons/button_bottom.dart';

class CategoryDetailPage extends StatefulWidget {
  const CategoryDetailPage({Key? key}) : super(key: key);

  @override
  State<CategoryDetailPage> createState() => _CategoryDetailPageState();
}

class _CategoryDetailPageState extends State<CategoryDetailPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("CategoryDetails");
  }

  bool isLike = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            // height: size.height,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  CategoryDetailsBox(size: size),
                  MenuPhotoDetail(size: size),
                  ListFriendClient(size: size),
                ],
              ),
            ),
          ),
          HeaderNavBar(
            size: size,
            onTap: () {
              setState(() {
                isLike = !isLike;
              });
            },
            color: isLike ? Colors.blueAccent : Colors.black,
            icon: isLike ? CupertinoIcons.bookmark_fill : CupertinoIcons.bookmark,
          ),
          ButtonBottom(
            size: size,
            text: 'Rate Your Experience',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
