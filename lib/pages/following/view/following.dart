import 'package:flutter/material.dart';
import 'package:shop_app/pages/find_friend/modules/contact_find_friend.dart';
import 'package:shop_app/widgets/list_view_tile_button.dart';

class FollowingPage extends StatefulWidget {
  FollowingPage({Key? key}) : super(key: key);

  @override
  State<FollowingPage> createState() => _FollowingPageState();
}

class _FollowingPageState extends State<FollowingPage> {
  bool isFlow = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
        ),
        title: const Text(
          "Following",
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.only(top: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ListViewTileButton(
                countHeight: size.height,
                count: 6,
                onTap: () {
                  setState(() {
                    isFlow = !isFlow;
                  });
                },
                size: size,
                textStatus: isFlow ? "Follow" : "Unfollow",
                textColor: isFlow ? Colors.white : Colors.black,
                color: isFlow ? Colors.blueAccent : Colors.white,
                colorBorder: isFlow
                    ? Colors.blueAccent.withOpacity(0.4)
                    : Colors.black.withOpacity(0.4),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
