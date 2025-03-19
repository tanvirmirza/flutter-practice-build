import 'package:flutter/material.dart';

class RadioButtonW extends StatefulWidget {
  const RadioButtonW({super.key});

  @override
  State<RadioButtonW> createState() => _RadioButtonWState();
}

class _RadioButtonWState extends State<RadioButtonW> {
  int selectValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("RadioButton")),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Radio(
            groupValue: selectValue,
            value: 1,
            onChanged: (int? nvalue) {
              setState(() {
                selectValue = nvalue!;
              });
            },
          ),
          Radio(
            groupValue: selectValue,
            value: 2,
            onChanged: (int? nvalue) {
              setState(() {
                selectValue = nvalue!;
              });
            },
          ),
          Radio(
            groupValue: selectValue,
            value: 3,
            onChanged: (int? nvalue) {
              setState(() {
                selectValue = nvalue!;
              });
            },
          ),
        ],
      )),
    );
  }
}
