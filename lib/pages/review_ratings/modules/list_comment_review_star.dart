import 'package:flutter/material.dart';

class ListCommentReviewStar extends StatefulWidget {
  const ListCommentReviewStar({Key? key, required this.size}) : super(key: key);
  final Size size;

  @override
  State<ListCommentReviewStar> createState() => _ListCommentReviewStarState();
}

class _ListCommentReviewStarState extends State<ListCommentReviewStar> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Material(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
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
    );
  }
}
