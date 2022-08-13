import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SelectCategory extends StatelessWidget {
  SelectCategory({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;
  List list = [
    "Italian",
    "Chinese",
    "Maxian",
    "Thai",
    "Arabian",
    "European",
    "India",
    "American",
    "Korean",
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.4,
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 25,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: size.height * 0.1,
              child: const Center(
                child: Text(
                  "Select Category",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.3,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 110,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  mainAxisExtent: 50,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black.withOpacity(0.1),
                      ),
                      borderRadius: BorderRadius.circular(10),
                      color:
                          index == 0 ? const Color(0xFFDF4E53) : Colors.white,
                    ),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(3),
                        primary: Colors.black.withOpacity(0.5),
                        backgroundColor: Colors.white.withOpacity(0.4),
                      ),
                      onPressed: () {},
                      child: Text("${list[index]}"),
                    ),
                  );
                },
                itemCount: 9,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
