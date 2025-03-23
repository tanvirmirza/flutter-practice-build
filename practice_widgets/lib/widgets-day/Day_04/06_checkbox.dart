import 'package:flutter/material.dart';

class KCheckBox extends StatefulWidget {
  const KCheckBox({super.key});

  @override
  State<KCheckBox> createState() => _KCheckBoxState();
}

class _KCheckBoxState extends State<KCheckBox> {
  bool onClicked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CheckBox'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          onClicked ? Text('Check') : Text('Uncheck'),
          SizedBox(
            height: 50,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                    value: onClicked,
                    onChanged: (value) {
                      setState(() {
                        onClicked = value!;
                      });
                    }),
                onClicked
                    ? Text('\u200B \u200B\u200B \u200B \u200B Check Box')
                    : Text('UnCheck Box'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
