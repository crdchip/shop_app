import 'dart:math';

import 'package:flutter/material.dart';
import 'package:shop_app/pages/profile/view/profile_user.dart';

class NotificationsPage extends StatefulWidget {
  NotificationsPage({Key? key}) : super(key: key);

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  Random random = Random();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Notifications",
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: size.height,
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => ProfileUser()));
                    },
                    child: ListTile(
                      leading: Icon(Icons.person),
                      title: Text("UserName$index"),
                      subtitle: Text(
                        "username$index",
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.5),
                        ),
                      ),
                      trailing: Text(
                          "${random.nextInt(24)}:${random.nextInt(59)} am"),
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
}
