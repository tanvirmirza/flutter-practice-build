import 'package:flutter/material.dart';

class RWrap extends StatelessWidget {
  const RWrap({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wrap'),
      ),
      body: Wrap(
        children: [
          ...List.generate(
              10,
              (index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Chip(
                      label: Text(
                        'Index ${index + 1}',
                      ),
                      backgroundColor: Colors.deepPurple.shade100,
                      labelStyle: TextStyle(color: Colors.grey.shade700),
                    ),
                  ))
        ],
      ),
    );
  }
}
