import 'package:flutter/material.dart';

class RadioListTileW extends StatefulWidget {
  const RadioListTileW({super.key});

  @override
  State<RadioListTileW> createState() => _RadioListTileWState();
}

class _RadioListTileWState extends State<RadioListTileW> {
  bool right = false;
  int selectValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Radio ListTile"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: 50,
          ),
          Text(
            "Which Language Use In Flutter?",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                child: RadioListTile(
                    contentPadding: EdgeInsets.all(0.0),
                    title: Text("Java"),
                    value: 1,
                    groupValue: selectValue,
                    onChanged: (int? nvalue) {
                      setState(() {
                        selectValue = nvalue!;
                        right = false;
                        if (selectValue == nvalue) {
                          print("Wrong");
                        }
                      });
                    }),
              ),
              Expanded(
                child: RadioListTile(
                    contentPadding: EdgeInsets.all(0.0),
                    title: Text("Python"),
                    value: 2,
                    groupValue: selectValue,
                    onChanged: (int? nvalue) {
                      setState(() {
                        selectValue = nvalue!;
                        right = false;
                        if (selectValue == nvalue) {
                          print("Wrong");
                        }
                      });
                    }),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: RadioListTile(
                    contentPadding: EdgeInsets.all(0.0),
                    title: right
                        ? Text(
                            "Dart",
                            style: TextStyle(color: Colors.green),
                          )
                        : Text(
                            "Dart",
                          ),
                    value: 3,
                    groupValue: selectValue,
                    onChanged: (int? nvalue) {
                      setState(() {
                        selectValue = nvalue!;
                        right = true;
                        if (selectValue == nvalue) {
                          print("Right");
                        }
                      });
                    }),
              ),
              Expanded(
                child: RadioListTile(
                    contentPadding: EdgeInsets.all(0.0),
                    title: Text("C#"),
                    value: 4,
                    groupValue: selectValue,
                    onChanged: (int? nvalue) {
                      setState(() {
                        selectValue = nvalue!;
                        right = false;
                        if (selectValue == nvalue) {
                          print("Wrong");
                        }
                      });
                    }),
              )
            ],
          ),
        ]),
      ),
    );
  }
}
