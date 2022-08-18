import 'package:flutter/material.dart';

class ListFriendClient extends StatelessWidget {
  const ListFriendClient({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.55,
      child: Column(
        children: [
          SizedBox(
            height: size.height * 0.035,
            child: ListTile(
              leading: const Text(
                "Review & Ratings",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                textDirection: TextDirection.ltr,
              ),
              trailing: Text(
                "See all (22)",
                style: TextStyle(
                  color: Colors.blueAccent.withOpacity(0.5),
                ),
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.42,
            width: size.width,
            child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/profiles$index.png"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  title: Text("Class $index"),
                  subtitle: Text("sub $index"),
                  trailing: Text("Trailing $index"),
                );
              },
              itemCount: 5,
            ),
          ),
        ],
      ),
    );
  }
}
