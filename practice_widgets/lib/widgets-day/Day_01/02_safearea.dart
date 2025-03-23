import 'package:flutter/material.dart';

class KSafeArea extends StatelessWidget {
  const KSafeArea({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(children: [
          ...List.generate(
              30,
              (index) => ListTile(
                    title: Text("SafeArea"),
                  )),
        ]),
      ),
    );
  }
}
