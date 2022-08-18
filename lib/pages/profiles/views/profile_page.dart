import 'package:flutter/material.dart';
import 'package:shop_app/pages/edit_profile/view/edit_profile.dart';
import 'package:shop_app/pages/follower/view/follower.dart';
import 'package:shop_app/pages/following/view/following.dart';
import 'package:shop_app/pages/home/modules/box_trend_client.dart';
import 'package:shop_app/pages/login/view/login_page.dart';
import 'package:shop_app/pages/profiles/modules/post_category_profile.dart';
import 'package:shop_app/pages/reiview/view/review_page.dart';
import 'package:shop_app/pages/settings/view/settings_page.dart';
import 'package:shop_app/widgets/buttons/button_profile.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "My Profile",
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: size.height * 0.2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: size.height * 0.15,
                    width: size.height * 0.15,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage("assets/images/profiles1.png"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.1,
              child: Column(
                children: [
                  Center(
                    child: Text(
                      "Jayson Acevedo",
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.6),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      "jayson.acevedo@gmail.com",
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.6),
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.07,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildStatus(
                    "Review",
                    120,
                    () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ReviewPage(),
                        ),
                      );
                    },
                  ),
                  buildStatus(
                    "Follower",
                    1235,
                    () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FollowerPage(),
                        ),
                      );
                    },
                  ),
                  buildStatus(
                    "Following",
                    45,
                    () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FollowingPage(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ButtonProfile(
                    text: "Edit Profile",
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EditProfile(),
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  ButtonProfile(
                    text: "Settings",
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SettingsPage(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              height: size.height,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                // scrollDirection: Axis.vertical,
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
                    child: PostCategoryProfiles(
                      size: size,
                      text: i == 0 ? "OPEN" : "CLOSE",
                      color: i == 0 ? Colors.greenAccent : Colors.redAccent,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildStatus(String text, int count, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Text(
            "$count",
            style: const TextStyle(
              color: Colors.blueAccent,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            text,
            style: TextStyle(color: Colors.black.withOpacity(0.3)),
          ),
        ],
      ),
    );
  }
}
