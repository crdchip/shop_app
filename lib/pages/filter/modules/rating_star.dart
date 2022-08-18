import 'package:flutter/material.dart';
import 'package:shop_app/widgets/ratings_star.dart';

class RatingStar extends StatelessWidget {
  const RatingStar({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.3,
      child: Column(
        children: [
          SizedBox(
            height: size.height * 0.05,
            child: const Center(
              child: Text(
                "Ratings",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          const RatingsStar()
        ],
      ),
    );
  }
}
