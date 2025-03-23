import 'package:flutter/material.dart';

class KListViewBuilder extends StatefulWidget {
  const KListViewBuilder({super.key});

  @override
  State<KListViewBuilder> createState() => _KListViewBuilderState();
}

class _KListViewBuilderState extends State<KListViewBuilder> {
  var mapData = [
    {'name': 'Tanvir', 'id': '+8801878403537', 'unread': '2'},
    {'name': 'Nahid ', 'id': '+8801878467569', 'unread': '3'},
    {'name': 'Mirza ', 'id': '+8801578403759', 'unread': '1'},
    {'name': 'Jahid ', 'id': '+8801978405690', 'unread': '2'},
    {'name': 'Tanvir', 'id': '+8801678440587', 'unread': '4'},
    {'name': 'Nahid ', 'id': '+8801778408041', 'unread': '2'},
    {'name': 'Mirza ', 'id': '+8801878401094', 'unread': '3'},
    {'name': 'Jahid ', 'id': '+8801478400120', 'unread': '1'}
  ];

// late int listIndex = mapData.length;
  int listIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("ListView Builder")),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            setState(() {

              try{
                 if (listIndex < mapData.length) {
                listIndex++;
              } 
              
              }catch(e){
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    duration: Duration(seconds: 2),
                    backgroundColor: Colors.white,
                    content: SnackBarAction(
                      label: 'Error!',
                      textColor: Colors.white,
                      onPressed: () {},
                      backgroundColor: Colors.green,
                    )));
              }
             
            });
          },
        ),
        body: ListView.builder(
            itemCount: listIndex,
            itemExtent: 80,
            itemBuilder: (BuildContext context, index) {
              return ListTile(
                  leading: CircleAvatar(
                      backgroundColor: Colors.green,
                      child: Text(mapData[index]['name']![0].toString())),
                  title: Text(mapData[index]['name'].toString()),
                  subtitle: Text(mapData[index]['id'].toString()),
                  trailing: CircleAvatar(
                    child: Text(mapData[index]['unread'].toString()),
                    radius: 12,
                  ),
                  focusColor: Colors.green[300],
                  onTap: () {});
            }));
  }
}
