import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/pages/dash_boar/view/dash_boar.dart';

class HeaderNavBar extends StatelessWidget {
  HeaderNavBar({
    Key? key,
    required this.size,
    required this.onTap,
    required this.icon, required this.color,
  }) : super(key: key);

  final Size size;
  final VoidCallback onTap;
  final IconData icon;
  final Color color;
  bool isLike = false;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 35,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 0,
        ),
        child: SizedBox(
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
                    Navigator.pop(context);
                  },
                ),
                Row(
                  children: [
                    Icon(
                      Icons.device_hub,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    InkWell(
                      onTap: onTap,
                      child: Icon(
                        icon,
                        color: color,
                      ),
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
