import 'package:flutter/material.dart';

class RatingsStar extends StatefulWidget {
  const RatingsStar({
    Key? key,
  }) : super(key: key);

  @override
  State<RatingsStar> createState() => _RatingsStarState();
}

class _RatingsStarState extends State<RatingsStar> {
  int _current = 1;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.1,
      child: Column(
        children: [
          SizedBox(
            height: size.height * 0.1,
            child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: size.width * 0.17,
              ),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  var i = index + 1;
                  return changeColorStar(i <= _current, () {
                    setState(() {
                      _current = i;
                    });
                  });
                },
                itemCount: 5,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget changeColorStar(bool isActive, VoidCallback onPressed) {
    return IconButton(
      icon: Icon(
        Icons.star,
        color: isActive ? Colors.yellowAccent.withOpacity(0.8) : Colors.grey,
        size: 40,
      ),
      onPressed: onPressed,
    );
  }
}
