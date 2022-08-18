import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/pages/find_friend/modules/contact_find_friend.dart';

class FindFriendPage extends StatefulWidget {
  const FindFriendPage({Key? key}) : super(key: key);

  @override
  State<FindFriendPage> createState() => _FindFriendPageState();
}

class _FindFriendPageState extends State<FindFriendPage> {
  bool isFlow = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black.withOpacity(0.8),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Find Friends",
          style: TextStyle(
            color: Colors.black.withOpacity(0.8),
            fontSize: 22,
          ),
        ),
        centerTitle: true,
        actions: [
          Icon(
            CupertinoIcons.search,
            color: Colors.black.withOpacity(0.8),
          ),
          const SizedBox(
            width: 15,
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ListTileFindFriends(
                countHeight: size.height * 0.3,
                count: 4,
                onTap: () {
                  setState(() {
                    isFlow = !isFlow;
                  });
                },
                size: size,
                textTitle: "Contacts",
                textStatus: isFlow ? "Unfollow" : "Follow",
                color: isFlow ? Colors.white : Colors.blueAccent,
                colorBorder: isFlow
                    ? Colors.black.withOpacity(0.4)
                    : Colors.blueAccent.withOpacity(0.4),
              ),
              ListTileFindFriends(
                countHeight: size.height * 0.6,
                count: 6,
                onTap: () {
                  setState(() {
                    isFlow = !isFlow;
                  });
                },
                size: size,
                textTitle: "Suggetions",
                textStatus: isFlow ? "Unfollow" : "Follow",
                color: isFlow ? Colors.white : Colors.blueAccent,
                colorBorder: isFlow
                    ? Colors.black.withOpacity(0.4)
                    : Colors.blueAccent.withOpacity(0.4),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
