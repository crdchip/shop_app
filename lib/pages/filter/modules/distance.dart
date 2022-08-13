import 'package:flutter/material.dart';

class Distance extends StatelessWidget {
  const Distance({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.15,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: size.height * 0.05,
            child: const Center(
              child: Text(
                "Distance",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 10,
              ),
              child: Column(
                children: [
                  Stack(
                    children: [
                      SizedBox(
                        height: 50,
                        // decoration: const BoxDecoration(
                        //   color: Colors.amberAccent,
                        // ),
                        child: Stack(
                          alignment: AlignmentDirectional.centerStart,
                          children: [
                            Container(
                              height: 10,
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.4),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            Positioned(
                              child: Container(
                                height: 10,
                                width: size.width * 0.2,
                                decoration: BoxDecoration(
                                  color: Colors.blueAccent.withOpacity(0.4),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        left: size.width * 0.17,
                        child: const Icon(
                          Icons.location_on,
                          size: 24,
                          color: Colors.blueAccent,
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        child: Text(
                          "0",
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.6),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Text(
                          "100",
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.6),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
