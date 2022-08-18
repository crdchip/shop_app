import 'package:flutter/material.dart';
import 'package:shop_app/pages/find_friend/view/find_friend.dart';

class BoxFriends extends StatelessWidget {
  const BoxFriends({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.25,
      child: Column(
        children: [
          SizedBox(
            height: size.height * 0.075,
            child: ListTile(
              leading: const Text(
                "Friends",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                textDirection: TextDirection.ltr,
              ),
              trailing: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const FindFriendPage(),
                    ),
                  );
                },
                child: Text(
                  "See all (56)",
                  style: TextStyle(
                    color: Colors.blueAccent.withOpacity(0.5),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.06,
            width: size.width,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              itemBuilder: (context, index) {
                return Container(
                  width: size.width * 0.11,
                  margin: const EdgeInsets.only(
                    right: 20,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                    ),
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/images/profiles$index.png",
                      ),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(50),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
