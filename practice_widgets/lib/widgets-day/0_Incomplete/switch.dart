import 'package:flutter/material.dart';

class SwitchW extends StatefulWidget {
  const SwitchW({super.key});

  @override
  State<SwitchW> createState() => _SwitchWState();
}

class _SwitchWState extends State<SwitchW> {
  bool onClicked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Switch"), actions: [
        Icon(onClicked ? Icons.mode_night_outlined : Icons.wb_sunny),
        SizedBox(
          width: 10,
        ),
        Icon(Icons.more_vert),
      ]),
      backgroundColor: onClicked ? Colors.grey : Colors.grey[50],
      body: Center(
          child: Switch(
        onChanged: (bool? nvalue) {
          setState(() {
            onClicked = nvalue!;
          });
        },
        value: onClicked,
      )),
    );
  }
}
