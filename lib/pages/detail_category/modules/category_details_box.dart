import 'package:flutter/material.dart';

class CategoryDetailsBox extends StatelessWidget {
  const CategoryDetailsBox({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.47,
      child: Column(
        children: [
          Container(
            height: size.height * 0.35,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/categary0.jpg",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            child: Container(
              margin: EdgeInsets.only(left: size.width * 0.05, top: 10),
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
                  SizedBox(
                    height: size.height * 0.03,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        RichText(
                          text: const TextSpan(
                              style: TextStyle(
                                fontSize: 16,
                                fontStyle: FontStyle.normal,
                              ),
                              children: [
                                TextSpan(
                                  text: "Open Now",
                                  style: TextStyle(color: Colors.redAccent),
                                ),
                                TextSpan(
                                  text: "  daily time",
                                  style: TextStyle(color: Colors.black),
                                ),
                                TextSpan(
                                  text: "  9:30 am to 11:00 pm",
                                  style: TextStyle(color: Colors.redAccent),
                                ),
                              ]),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
