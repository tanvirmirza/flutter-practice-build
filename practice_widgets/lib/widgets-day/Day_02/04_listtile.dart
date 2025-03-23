import 'package:flutter/material.dart';

class KListTile extends StatelessWidget {
  const KListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ListTile')),
      body: Column(children: [
        ListTile(
            leading: Icon(Icons.account_circle_rounded),
            title: Text('This is title'),
            subtitle: Text('Subtitle'),
            trailing: Icon(Icons.more_vert),
            focusColor: Colors.green[300],
            onTap: () {}),
        ListTile(
            leading: Icon(Icons.account_circle_rounded),
            title: Text('This is title'),
            subtitle: Text('Subtitle'),
            trailing: Icon(Icons.more_vert),
            focusColor: Colors.green[300],
            onTap: () {}),
        ListTile(
            leading: Icon(Icons.account_circle_rounded),
            title: Text('This is title'),
            subtitle: Text('Subtitle'),
            trailing: Icon(Icons.more_vert),
            focusColor: Colors.green[300],
            onTap: () {}),
      ]),
    );
  }
}
