import 'package:flutter/material.dart';

class SwitchListTileW extends StatefulWidget {
  const SwitchListTileW({super.key});

  @override
  State<SwitchListTileW> createState() => _SwitchListTileWState();
}

class _SwitchListTileWState extends State<SwitchListTileW> {
  bool value1 = false;
  bool value2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Switch ListTile")),
      body: ListView(
          children: ListTile.divideTiles(context: context, tiles: [
        SwitchListTile(
          value: value1,
          secondary: Icon(value1 ? Icons.mode_night_outlined : Icons.wb_sunny),
          title: Text(value1 ? "Dark Mode" : "Light Mode"),
          onChanged: (bool nvalue) {
            setState(() {
              value1 = nvalue;
            });
          },
        ),
        SwitchListTile(
          value: value2,
          secondary: Icon(value2
              ? Icons.swap_vert_circle
              : Icons.swap_vert_circle_outlined),
          title: Text(value2 ? "Data On" : "Data Off"),
          onChanged: (bool nvalue) {
            setState(() {
              value2 = nvalue;
            });
          },
        ),
      ]).toList()),
    );
  }
}
