import 'package:flutter/material.dart';

class KDivider extends StatelessWidget {
  const KDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        "Divider Widget",
      )),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Divider(
            height: 20,
            endIndent: 80,
          ),
          Text(
            "Write Somelines for the example!",
            style: TextStyle(fontSize: 20),
          ),
          Divider(
            height: 20,
            endIndent: 150,
          ),
          Text(
            "Write Somelines for the example!",
            style: TextStyle(fontSize: 20),
          ),
          Divider(
            height: 20,
            endIndent: 80,
          ),
        ],
      ),
    );
  }
}
