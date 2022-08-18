import 'package:flutter/material.dart';
import 'package:shop_app/pages/filter/view/filter.dart';

class BoxMyFavourite extends StatelessWidget {
  const BoxMyFavourite({
    Key? key,
    required this.size,
    required this.text,
    required this.color,
  }) : super(key: key);

  final Size size;
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.35,
      width: size.width * 0.85,
      child: Container(
        // color: Colors.amberAccent,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Stack(
          children: [
            Column(
              children: [
                SizedBox(
                  height: size.height * 0.25,
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            image: AssetImage("assets/images/trending.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 10,
                        left: 10,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            // padding: const EdgeInsets.all(16.0),
                            primary: color,
                            textStyle: const TextStyle(fontSize: 14),
                            backgroundColor: Colors.white,
                          ),
                          onPressed: () {},
                          child: Text(text),
                        ),
                      ),
                      Positioned(
                        top: 10,
                        right: 10,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            // padding: const EdgeInsets.all(16.0),
                            primary: Colors.black,
                            textStyle: const TextStyle(fontSize: 14),
                            backgroundColor: Colors.white,
                          ),
                          onPressed: () {},
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Filter(),
                                ),
                              );
                            },
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.star,
                                  color: Colors.yellowAccent,
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                Text("4,5"),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  child: Container(
                    margin: const EdgeInsets.only(left: 5, top: 10),
                    child: Column(
                      children: [
                        SizedBox(
                          height: size.height * 0.04,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                flex: 5,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Happy Bones",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 2,
                                    ),
                                    Container(
                                      width: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.pink.withOpacity(0.4),
                                      ),
                                      child: const Center(
                                        child: Text(
                                          "Newton",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      width: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.blue.withOpacity(0.4),
                                      ),
                                      child: const Center(
                                        child: Text(
                                          "12km",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        SizedBox(
                          height: size.height * 0.025,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Text("394 Broome St. New York, NY JOOIS, USA"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Positioned(
              bottom: 50,
              right: 20,
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.4),
                        blurRadius: 1.0,
                        spreadRadius: 1.0,
                      )
                    ]),
                child: Center(
                  child: Icon(
                    Icons.bookmark,
                    color: Colors.blueAccent,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
