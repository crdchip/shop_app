import 'package:flutter/material.dart';
import 'package:shop_app/pages/review_ratings/modules/change_ratings_star.dart';
import 'package:shop_app/pages/review_ratings/modules/list_comment_review_star.dart';

class ReviewPage extends StatefulWidget {
  const ReviewPage({Key? key}) : super(key: key);

  @override
  State<ReviewPage> createState() => _ReviewPageState();
}

class _ReviewPageState extends State<ReviewPage> {
  bool isActive = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
          "Reviews",
          style: TextStyle(
            color: Colors.black.withOpacity(0.8),
            fontSize: 22,
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
              SizedBox(
                height: size.height,
                child: ListView.builder(
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: const Icon(Icons.abc_rounded),
                      title: Text("UserName$index"),
                      subtitle: Text(
                        "username$index",
                      ),
                      trailing: Container(
                        margin: const EdgeInsets.symmetric(vertical: 13),
                        width: size.width * 0.15,
                        child: Row(
                          children: const [
                            Icon(
                              Icons.star,
                              color: Colors.yellowAccent,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text("4.5")
                          ],
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
