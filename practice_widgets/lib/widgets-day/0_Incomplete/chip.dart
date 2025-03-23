import 'package:flutter/material.dart';

class ChipW extends StatefulWidget {
  const ChipW({super.key});

  @override
  State<ChipW> createState() => _ChipWState();
}

class _ChipWState extends State<ChipW> {
  List<String> _chipList = ['Chip 1', 'Chip 2', 'Chip 3'];
  bool value1 = true;
  bool value2 = true;
  bool value3 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Chip')),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                value1
                    ? SizedBox()
                    : Chip(
                        onDeleted: () {
                          setState(() {
                            value1 = !value1;
                          });
                        },
                        label: Text(_chipList[0]),
                        deleteIcon: Icon(Icons.cancel),
                        deleteIconColor: Colors.red,
                      ),
                SizedBox(
                  width: 5,
                ),
                value2
                    ? SizedBox()
                    : Chip(
                        label: Text(_chipList[1]),
                        deleteIcon: Icon(Icons.cancel),
                        deleteIconColor: Colors.red,
                        onDeleted: () {
                          setState(() {
                            value2 = !value2;
                          });
                        },
                      ),
                SizedBox(
                  width: 5,
                ),
                value3
                    ? SizedBox()
                    : Chip(
                        label: Text(_chipList[2]),
                        deleteIcon: Icon(Icons.cancel),
                        deleteIconColor: Colors.red,
                        onDeleted: () {
                          setState(() {
                            value3 = !value3;
                          });
                        },
                      )
              ],
            ),
          ),
          SizedBox(
            height: 200,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              value1
                  ? InputChip(
                      avatar: Icon(
                        Icons.check_circle,
                        color: Colors.green,
                      ),
                      tooltip: 'Select',
                      label: Text(_chipList[0]),
                      onPressed: () {
                        setState(() {
                          value1 = !value1;
                        });
                      },
                    )
                  : SizedBox(),
              SizedBox(
                width: 5,
              ),
              value2
                  ? InputChip(
                      avatar: Icon(
                        Icons.check_circle,
                        color: Colors.green,
                      ),
                      tooltip: 'Select',
                      label: Text(_chipList[1]),
                      onPressed: () {
                        setState(() {
                          value2 = !value2;
                        });
                      },
                    )
                  : SizedBox(),
              SizedBox(
                width: 5,
              ),
              value3
                  ? InputChip(
                      avatar: Icon(
                        Icons.check_circle,
                        color: Colors.green,
                      ),
                      tooltip: 'Select',
                      label: Text(_chipList[2]),
                      onPressed: () {
                        setState(() {
                          value3 = !value3;
                        });
                      },
                    )
                  : SizedBox(),
            ],
          ),
        ],
      )),
    );
  }
}
