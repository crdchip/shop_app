import 'package:flutter/material.dart';

import 'package:shop_app/pages/review_ratings/modules/list_comment_review_star.dart';
import 'package:shop_app/widgets/buttons/button_bottom.dart';
import 'package:shop_app/widgets/ratings_star.dart';

// ignore: must_be_immutable
class ChangeRatingsStar extends StatelessWidget {
  ChangeRatingsStar({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;
  final TextEditingController _commentReview = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(top: size.height * 0.1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const RatingsStar(),
              SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Rate your experience",
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.4),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 25),
                child: SizedBox(
                  height: size.height * 0.3,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    child: Card(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: TextField(
                          controller: _commentReview,
                          maxLines: 10, //or null
                          decoration: InputDecoration(
                            hintText: "Write your experience",
                            hintStyle: TextStyle(
                              color: Colors.black.withOpacity(0.5),
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        ButtonBottom(
          size: size,
          text: 'Done',
          onTap: () {
            // ignore: unnecessary_null_comparison
            _commentReview.value.text != null
                ? Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ListCommentReviewStar(size: size),
                    ),
                  )
                : showAlertDialog(context);
          },
        )
      ],
    );
  }

  showAlertDialog(BuildContext context) {
    Widget okButton = FlatButton(
      onPressed: () {},
      child: const Text("OK"),
    );
    AlertDialog alert = AlertDialog(
      title: const Text("Simple Alert"),
      content: const Text("This is an alert message."),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
