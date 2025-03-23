import 'package:flutter/material.dart';

class KBottomNav extends StatefulWidget {
  const KBottomNav({super.key});

  @override
  State<KBottomNav> createState() => _KBottomNavState();
}

class _KBottomNavState extends State<KBottomNav> {
  List<Widget> pages = [
    Text('Home Page'),
    Text('Message Page'),
    Text('Profile Page')
  ];

  int _currentIndex = 0;

  void onTapped(index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Navigation Bar'),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.message_rounded), label: 'Message'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_sharp), label: 'Profile')
          ],
          onTap: onTapped),
      body: Center(child: pages.elementAt(_currentIndex)),
    );
  }
}
