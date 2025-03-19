import 'package:flutter/material.dart';



class KAppBar extends StatelessWidget {
  const KAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    appBar: AppBar(
        title: Text("Practice App"),
        centerTitle: true,
        backgroundColor: Colors.green,
        leading: Icon(Icons.menu),
        titleSpacing: 10,
        actions: [
          Icon(Icons.search),
          Icon(Icons.more_vert)
        ],
      ),
  );
  }
}

