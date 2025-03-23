import 'package:flutter/material.dart';

class SimpleDialogW extends StatefulWidget {
  const SimpleDialogW({super.key});

  @override
  State<SimpleDialogW> createState() => _SimpleDialogWState();
}

class _SimpleDialogWState extends State<SimpleDialogW> {
  String value = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Simple Dialog')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(value),
            SizedBox(
              height: 100,
            ),
            OutlinedButton(
              child: Text('Simple Dialog'),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return SimpleDialog(
                        title: Text('Select a option'),
                        children: [
                          SimpleDialogOption(
                            child: Text('Option 1'),
                            onPressed: () {
                              setState(() {
                                Navigator.of(context).pop();
                                value = 'Option 1';
                              });
                            },
                          ),
                          SimpleDialogOption(
                            child: Text('Option 2'),
                            onPressed: () {
                              setState(() {
                                Navigator.of(context).pop();
                                value = 'Option 2';
                              });
                            },
                          ),
                          SimpleDialogOption(
                            child: Text('Option 3'),
                            onPressed: () {
                              setState(() {
                                Navigator.of(context).pop();
                                value = 'Option 3';
                              });
                            },
                          ),
                        ],
                      );
                    });
              },
            ),
          ],
        ),
      ),
    );
  }
}
