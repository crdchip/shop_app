import 'package:flutter/material.dart';
import 'package:shop_app/pages/review_ratings/modules/change_ratings_star.dart';
import 'package:shop_app/pages/review_ratings/modules/list_comment_review_star.dart';


class ReviewRatingsPage extends StatefulWidget {
  const ReviewRatingsPage({Key? key}) : super(key: key);

  @override
  State<ReviewRatingsPage> createState() => _ReviewRatingsPageState();
}

class _ReviewRatingsPageState extends State<ReviewRatingsPage> {
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
          onPressed: () {},
        ),
        title: Text(
          "Preview & Ratings",
          style: TextStyle(
            color: Colors.black.withOpacity(0.8),
            fontSize: 22,
          ),
        ),
        centerTitle: true,
      ),
      body: isActive
          ? ListCommentReviewStar(size: size)
          : ChangeRatingsStar(size: size),
    );
  }
}
