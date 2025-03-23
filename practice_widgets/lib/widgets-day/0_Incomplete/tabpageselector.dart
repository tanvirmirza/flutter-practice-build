import 'package:flutter/material.dart';

List<Widget> widget = [
  Icon(Icons.home),
  Icon(Icons.menu_book),
  Icon(Icons.android)
];

class TabPageSelectorW extends StatefulWidget {
  const TabPageSelectorW({super.key});

  @override
  State<TabPageSelectorW> createState() => _TabPageSelectorWState();
}

class _TabPageSelectorWState extends State<TabPageSelectorW>
    with SingleTickerProviderStateMixin {
  late final TabController controller;
  int _index = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller =
        TabController(length: widget.length, initialIndex: _index, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(alignment: Alignment.center, children: [
        TabBarView(controller: controller, children: widget),
        Positioned(
            bottom: 40,
            child: TabPageSelector(
              controller: controller,
              color: Colors.black38,
            ))
      ]),
      floatingActionButton: ButtonBar(
        children: [
          FloatingActionButton.small(
            onPressed: () {
              (_index != widget.length - 1) ? _index++ : _index = 0;
              controller.animateTo(_index);
            },
            child: Icon(Icons.navigate_next),
            hoverElevation: 0,
            focusElevation: 0,
          ),
        ],
      ),
    );
  }
}
