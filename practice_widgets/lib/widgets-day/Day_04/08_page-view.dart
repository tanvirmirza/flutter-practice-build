import 'package:flutter/material.dart';

class KPageView extends StatefulWidget {
  const KPageView({super.key});

  @override
  State<KPageView> createState() => _KPageViewState();
}

class _KPageViewState extends State<KPageView> {
  bool onClicked = false;
  final contorller = PageController(initialPage: 1);

  List<Color> colors = [
    Colors.red.shade300,
    Colors.green.shade300,
    Colors.blue.shade300,
    Colors.yellow.shade300,
    Colors.orange.shade300
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'PageView',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.deepPurple[50],
        actions: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: OutlinedButton.icon(
                onPressed: () {
                  setState(() {
                    onClicked = !onClicked;
                  });
                },
                icon:
                    onClicked ? Icon(Icons.swap_vert) : Icon(Icons.swap_horiz),
                label: onClicked ? Text('Vertical') : Text('Horizontal')),
          )
        ],
      ),
      body: PageView(
          controller: contorller,
          scrollDirection: onClicked ? Axis.vertical : Axis.horizontal,
          children: List.generate(
              5,
              (index) => Container(
                    color: colors[index],
                  ))),
    );
  }
}
