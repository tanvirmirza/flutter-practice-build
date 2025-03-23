import 'package:flutter/material.dart';

class KDropDown extends StatefulWidget {
  const KDropDown({super.key});

  @override
  State<KDropDown> createState() => _KDropDownState();
}

class _KDropDownState extends State<KDropDown> {
  String dropDownValue = 'Default';
  List<String> dropDownItems = ['Default', 'Red', 'Green', 'White', 'Blue'];
  List<Color> colors = [
    Colors.red.shade100,
    Colors.green.shade100,
    Colors.grey.shade100,
    Colors.blue.shade100
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: dropDownValue == 'Default'
          ? Color(0xFFEFF8FF)
          : colors[dropDownItems.indexOf(dropDownValue) - 1],
      appBar: AppBar(
        title: Text('Drop Down'),
      ),
      body: Center(
        child: Card(
            child: ListTile(
          title: Text('Background'),
          trailing: DropdownButton(
            value: dropDownValue,
            elevation: 16,
            icon: Icon(Icons.keyboard_arrow_down),
            hint: Text('Color'),
            focusColor: Colors.transparent,
            autofocus: false,
            items: dropDownItems.map((String dropDownItems) {
              return DropdownMenuItem<String>(
                enabled: true,
                value: dropDownItems,
                child: Text(dropDownItems),
              );
            }).toList(),
            onChanged: (String? value) {
              setState(() {
                dropDownValue = value!;
              });
            },
          ),
          autofocus: false,
          onTap: () {},
        )),
      ),
    );
  }
}
