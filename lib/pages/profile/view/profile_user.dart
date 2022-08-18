import 'package:flutter/material.dart';
import 'package:shop_app/pages/follower/view/follower.dart';
import 'package:shop_app/pages/following/view/following.dart';
import 'package:shop_app/pages/home/modules/box_trend_client.dart';
import 'package:shop_app/widgets/buttons/button_profile.dart';

class ProfileUser extends StatefulWidget {
  const ProfileUser({Key? key}) : super(key: key);

  @override
  State<ProfileUser> createState() => _ProfileUserState();
}

class _ProfileUserState extends State<ProfileUser> {
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
          "Profile",
          style: TextStyle(
            color: Colors.black.withOpacity(0.8),
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
                  buildStatus("Review", 120),
                  buildStatus("Follower", 1235),
                  buildStatus("Following", 45),
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ButtonProfile(
                    text: "Follow",
                    onTap: () {
                      
                    },
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ButtonProfile(
                    text: "Block",
                    onTap: () {
                     
                    },
                  )
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
                    child: BoxTrendClient(
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

  Widget buildStatus(String text, int count) {
    return Column(
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
    );
  }
}
