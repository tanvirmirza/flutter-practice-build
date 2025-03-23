import 'package:flutter/material.dart';

class KEndDrawer extends StatelessWidget {
  KEndDrawer({super.key});

  final String name = 'Mirza Tanvir';
  final List<Map<String, dynamic>> elements = [
    {'icon': Icon(Icons.home_filled), 'title': 'Home'},
    {'icon': Icon(Icons.message_rounded), 'title': 'Message'},
    {'icon': Icon(Icons.account_box_rounded), 'title': 'Account'}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("End Drawer"),
      ),
      endDrawer: NavigationDrawer(
        children: [
          DrawerHeader(
              padding: EdgeInsets.all(1),
              child: UserAccountsDrawerHeader(
                  accountName: Text(name),
                  accountEmail: Text('mirzatanvir@gmail.com'),
                  currentAccountPicture: CircleAvatar(
                    minRadius: 1,
                    child: Text(name[0] + name.split(' ')[1][0]),
                  ))),
          ...List.generate(
              elements.length,
              (index) => ListTile(
                  leading: elements[index]['icon'],
                  title: Text(elements[index]['title']),
                  onTap: () {
                    print('Clicked ${elements[index]['title']}');
                    Navigator.pop(context);
                  }))
        ],
      ),
      body: Center(
        child: Text('Home'),
      ),
    );
  }
}
