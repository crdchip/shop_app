import 'package:flutter/material.dart';

class PreviewPage extends StatefulWidget {
  const PreviewPage({Key? key}) : super(key: key);

  @override
  State<PreviewPage> createState() => _PreviewPageState();
}

class _PreviewPageState extends State<PreviewPage> {
  int _currentIndex = 0;
  late PageController _pageController;
  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black.withOpacity(0.8),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          "Preview",
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
          ),
        ),
        centerTitle: true,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Container(
              color: Colors.black.withOpacity(0.8),
              height: size.height * 0.75,
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (index) {
                  // print("$index");
                  setState(
                    () {
                      _currentIndex = index;
                      // print("$_currentIndex");
                    },
                  );
                },
                itemBuilder: (context, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: size.height * 0.5,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/categary0.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                    ],
                  );
                },
                itemCount: 10,
              ),
            ),
            SizedBox(
              height: 10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.black.withOpacity(0.8),
                    padding: EdgeInsets.only(left: size.width * 0.37),
                    alignment: Alignment.center,
                    width: size.width,
                    height: 10,
                    child: ListView.builder(
                      itemCount: 10,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: ((context, index) {
                        return buildIndicator(index == _currentIndex);
                      }),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: Container(
              color: Colors.black.withOpacity(0.8),
            ))
          ],
        ),
      ),
    );
  }

  Widget buildIndicator(bool isActive) {
    return Padding(
      padding: const EdgeInsets.only(right: 2),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        height: 8,
        width: 8,
        decoration: BoxDecoration(
          color: isActive ? Colors.blueAccent.withOpacity(0.8) : Colors.grey,
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    );
  }
}
