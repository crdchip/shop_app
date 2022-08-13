import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:shop_app/pages/home/view/home_page.dart';
import 'package:shop_app/pages/profiles/views/profile_page.dart';

class DashBoarPage extends StatefulWidget {
  const DashBoarPage({Key? key}) : super(key: key);

  @override
  State<DashBoarPage> createState() => _DashBoarPageState();
}

class _DashBoarPageState extends State<DashBoarPage> {
  int currentIndex = 0;
  // ignore: non_constant_identifier_names
  final Sreen = [
    const HomePage(),
    const Center(
      child: Text("Favoutive"),
    ),
    const Center(
      child: Text("Create Images"),
    ),
    const Center(
      child: Text("Notifications"),
    ),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Sreen[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.black.withOpacity(0.4),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        iconSize: 32,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_max),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.bookmark),
            label: "Favoutive",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.add_circled),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.bell),
            label: "Notifications",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
