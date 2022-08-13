import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchHeader extends StatelessWidget {
  const SearchHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      child: Container(
        margin: EdgeInsets.only(top: 20),
        height: 50,
        child: TextField(
          textAlign: TextAlign.start,
          textAlignVertical: const TextAlignVertical(y: 1),
          obscureText: false,
          decoration: InputDecoration(
            suffixIcon: Icon(
              Icons.menu_rounded,
              color: Colors.black.withOpacity(0.4),
            ),
            prefixIconColor: Colors.black,
            prefixIcon: Icon(
              CupertinoIcons.search,
              color: Colors.black.withOpacity(0.4),
            ),
            border: OutlineInputBorder(),
            hintText: "Find Restaurants",
          ),
        ),
      ),
    );
  }
}
