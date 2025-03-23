import 'package:flutter/material.dart';

class KPositioned extends StatelessWidget {
  const KPositioned({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("POSITIONED")),
      body: Center(
          child: Stack(
        children: [
          Container(
            height: 200,
            width: 200,
            color: Colors.blue.shade100,
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: Container(
              height: 160,
              width: 160,
              color: Colors.blue.shade200,
            ),
          ),
          Positioned(
            bottom: 40,
            right: 40,
            child: Container(
              height: 120,
              width: 120,
              color: Colors.blue.shade300,
            ),
          ),
          Positioned(
            bottom: 60,
            right: 60,
            child: Container(
              height: 80,
              width: 80,
              color: Colors.blue.shade400,
            ),
          ),
          Positioned(
            bottom: 80,
            right: 80,
            child: Container(
              height: 40,
              width: 40,
              color: Colors.blue.shade500,
            ),
          )
        ],
      )),
    );
  }
}
