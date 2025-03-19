import 'package:flutter/material.dart';

class KInkWell extends StatelessWidget {
  const KInkWell({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("InkWell")),
      body: Center(
          child: InkWell(
        onTap: () {
          print("Clicked!");
        },
        child: Container(
          alignment: Alignment.center,
          height: 100,
          width: 200,
          color: Colors.green[300],
          child: Text(
            "InkWell",
            style: TextStyle(color: Colors.green[100], fontSize: 40),
          ),
        ),
      )),
    );
  }
}
