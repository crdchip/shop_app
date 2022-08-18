import 'package:flutter/material.dart';
import 'package:shop_app/pages/category/view/category.dart';

class BoxCategory extends StatelessWidget {
  const BoxCategory({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.24,
      child: Column(
        children: [
          SizedBox(
            height: size.height * 0.075,
            child: ListTile(
              leading: const Text(
                "BoxCategory",
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
                        builder: (context) => const Category(),
                      ));
                },
                child: Text(
                  "See all (9)",
                  style: TextStyle(
                    color: Colors.blueAccent.withOpacity(0.5),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.14,
            width: size.width,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (context, index) {
                return Container(
                  width: size.width * 0.26,
                  margin: const EdgeInsets.only(
                    right: 20,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                    ),
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/images/categary$index.jpg",
                      ),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Text(
                      "Vietnamese",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
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
