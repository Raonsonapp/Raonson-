import 'package:flutter/material.dart';
import 'feed_page.dart';
import 'profile_page.dart';
import 'upload_page.dart';

class RootPage extends StatefulWidget {
  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int currentIndex = 0;

  final pages = [
    FeedPage(),
    UploadPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (i) => setState(() => currentIndex = i),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Асосӣ"),
          BottomNavigationBarItem(icon: Icon(Icons.add_box), label: "Post"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Профил"),
        ],
      ),
    );
  }
}