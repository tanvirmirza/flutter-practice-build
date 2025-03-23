import 'package:flutter/material.dart';

class KGestureDetector extends StatelessWidget {
  const KGestureDetector({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("GestureDetector")),
        body: Center(
          child: GestureDetector(
            onTap: () => print("Tapped!"),
            onDoubleTap: () => print("Double Tapped!"),
            onLongPress: () => print("Long Pressed!"),
            child: Container(
              alignment: Alignment.center,
              height: 100,
              width: 200,
              color: Colors.blue[300],
              child: Text(
                "GestureDetector",
                style: TextStyle(color: Colors.blue[100], fontSize: 20),
              ),
            ),
          ),
        ));
  }
}
