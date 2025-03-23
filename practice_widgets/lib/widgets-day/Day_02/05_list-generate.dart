import 'package:flutter/material.dart';

class KListGenerate extends StatelessWidget {
  const KListGenerate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ListGenerate')),
      body: ListView(
        children: [
          // ...List.generate(
          //     5,
          //     (index) => ListTile(
          //           title: Text("Title $index"),
          //         )),

          ...List.generate(10, (index) => ListTile(
            leading: Icon(Icons.account_circle_rounded),
            title: Text('This is title ${index + 1 } '),
            subtitle: Text('Subtitle ${index + 1}'),
            trailing: Icon(Icons.more_vert),
            focusColor: Colors.green[300],
            onTap: () {}),)
        ],
      ),
    );
  }
}
