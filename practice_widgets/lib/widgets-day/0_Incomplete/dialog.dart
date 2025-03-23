import 'package:flutter/material.dart';

class DialogW extends StatelessWidget {
  const DialogW({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dialog')),
      body: Center(
          child: OutlinedButton(
        child: Text('Click Dialog', style: TextStyle(fontSize: 15)),
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return Dialog(
                  child: Container(
                      alignment: Alignment.center,
                      height: 80,
                      width: 80,
                      child: Text(
                        'Progress..!',
                        style: TextStyle(fontSize: 20),
                      )),
                );
              });
        },
      )),
    );
  }
}
