import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RatingStar extends StatelessWidget {
  const RatingStar({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.2,
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
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            height: size.height * 0.1,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 35,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    color: Colors.grey.withOpacity(0.2),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Icon(
                      CupertinoIcons.star_fill,
                      color: Colors.yellowAccent,
                      size: 34,
                    ),
                    Icon(
                      CupertinoIcons.star_fill,
                      color: Colors.yellowAccent,
                      size: 34,
                    ),
                    Icon(
                      CupertinoIcons.star_fill,
                      color: Colors.yellowAccent,
                      size: 34,
                    ),
                    Icon(
                      CupertinoIcons.star_fill,
                      color: Colors.yellowAccent,
                      size: 34,
                    ),
                    Icon(
                      CupertinoIcons.star_fill,
                      color: Colors.grey,
                      size: 34,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
