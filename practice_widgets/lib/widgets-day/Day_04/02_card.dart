import 'package:flutter/material.dart';

class KCard extends StatelessWidget {
  const KCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Widget'),
      ),
      body: Center(
        child: SizedBox(
            height: 180,
            width: 250,
            child: Card(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(65),
                child: Text('Card Box',
                    style: TextStyle(
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.bold,
                        fontSize: 25)),
              ),
            )),
      ),
    );
  }
}
