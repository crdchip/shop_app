import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeaderNavbar extends StatelessWidget {
  const HeaderNavbar({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 35,
        ),
        child: Container(
          height: 60,
          width: size.width,
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 5,
              horizontal: 15,
            ),
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
                border: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                hintText: "Find Restaurants",
              ),
            ),
          ),
        ),
      ),
    );
  }
}
