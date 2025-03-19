import 'package:flutter/material.dart';

class KMappingList extends StatefulWidget {
  KMappingList({super.key});

  @override
  State<KMappingList> createState() => _KMappingListState();
}

class _KMappingListState extends State<KMappingList> {
  var mapData = [
    {'name': 'Tanvir', 'id': '586566', 'unread': '2'},
    {'name': 'Nahid', 'id': '586556', 'unread': '3'},
    {'name': 'Mirza', 'id': '586560', 'unread': '1'},
    {'name': 'Jahid', 'id': '586561', 'unread': '2'},
    {'name': 'Tanvir', 'id': '586566', 'unread': '4'},
    {'name': 'Nahid', 'id': '586556', 'unread': '2'},
    {'name': 'Mirza', 'id': '586560', 'unread': '3'},
    {'name': 'Jahid', 'id': '586561', 'unread': '1'}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Mapping List')),
      body: ListView(
        children: mapData.map((value) {
          return ListTile(
            leading: CircleAvatar(backgroundColor: Colors.green,
           child: Text(value['name']![0].toString())),
            title: Text(
              value['name'].toString(),
            ),
            subtitle: Text(value['id'].toString()),
            trailing: CircleAvatar(
              radius: 12,
              child: Text(value['unread'].toString()),
            ),
          );
        }).toList(),
      ),
    );
  }
}
