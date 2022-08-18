import 'package:flutter/material.dart';
import 'package:shop_app/pages/profile/view/profile_user.dart';

class ListTileFindFriends extends StatefulWidget {
  const ListTileFindFriends({
    Key? key,
    required this.size,
    required this.textTitle,
    required this.textStatus,
    required this.color,
    required this.onTap,
    required this.colorBorder,
    required this.count,
    required this.countHeight,
  }) : super(key: key);
  final Size size;
  final String textTitle;
  final Color color;
  final Color colorBorder;
  final String textStatus;
  final VoidCallback onTap;
  final int count;
  final double countHeight;

  @override
  State<ListTileFindFriends> createState() => _ListTileFindFriendsState();
}

class _ListTileFindFriendsState extends State<ListTileFindFriends> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        ListTile(
          leading: Text(
            widget.textTitle,
            style: TextStyle(color: Colors.black.withOpacity(0.4)),
          ),
        ),
        SizedBox(
          height: widget.countHeight,
          child: ListView.builder(
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const ProfileUser()));
                },
                child: ListTile(
                  leading: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(50),
                      image: DecorationImage(
                        image: AssetImage("assets/images/profiles$index.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  title: Text(
                    "Username$index",
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  trailing: InkWell(
                    onTap: widget.onTap,
                    child: Container(
                      height: size.height * 0.04,
                      decoration: BoxDecoration(
                        border: Border.all(color: widget.colorBorder, width: 1),
                        color: widget.color,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      width: size.width * 0.2,
                      child: Center(
                        child: Text(widget.textStatus),
                      ),
                    ),
                  ),
                ),
              );
            },
            itemCount: widget.count,
          ),
        ),
      ],
    );
  }
}
