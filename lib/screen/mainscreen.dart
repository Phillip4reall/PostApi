import 'package:flutter/material.dart';
import 'package:post/screen/bookmark.dart';
import 'package:post/screen/user_post.dart';
import 'package:post/screen/user_profile.dart';

class Mainscreen extends StatefulWidget {
  const Mainscreen({super.key});

  @override
  State<Mainscreen> createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen> {
  final pagelist =[UserPost(),Bookmark(),ProfileScreen()];
  int selectedindex =0;
   void _ontap(int index){
    setState(() {
      selectedindex=index;
    });
   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SafeArea(
        child: BottomNavigationBar(
          onTap: _ontap,
          currentIndex: selectedindex,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.bookmark),label: 'Bookmarks'),
          BottomNavigationBarItem(icon: Icon(Icons.people),label: 'Profile')
        ]),
      ),
      backgroundColor: Colors.white,
      body: pagelist[selectedindex],
    );
  }
}