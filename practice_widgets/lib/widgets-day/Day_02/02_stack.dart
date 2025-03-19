import 'package:flutter/material.dart';

class KStack extends StatelessWidget {
  const KStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        "STACK",
      )),
      body: Center(
          child: Stack(
        children: [
          Container(
            height: 200,
            width: 200,
            color: Colors.blue.shade100,
          ),
          Container(
            height: 160,
            width: 160,
            color: Colors.blue.shade200,
          ),
          Container(
            height: 120,
            width: 120,
            color: Colors.blue.shade300,
          ),
          Container(
            height: 80,
            width: 80,
            color: Colors.blue.shade400,
          ),
          Container(
            height: 40,
            width: 40,
            color: Colors.blue.shade500,
          )
        ],
      )),
    );
  }
}
