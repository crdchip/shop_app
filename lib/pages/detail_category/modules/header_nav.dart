import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/pages/dash_boar/view/dash_boar.dart';

class HeaderNavBar extends StatelessWidget {
  const HeaderNavBar({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 35,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 0,
        ),
        child: Container(
          height: 60,
          width: size.width,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 5,
              horizontal: 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back_ios_rounded),
                  color: Colors.black,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DashBoarPage(),
                      ),
                    );
                  },
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.device_hub,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Icon(
                      CupertinoIcons.bookmark,
                      color: Colors.black,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
