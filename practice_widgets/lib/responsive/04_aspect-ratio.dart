import 'package:flutter/material.dart';

class RAspectRatio extends StatelessWidget {
  const RAspectRatio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aspect Ratio'),
      ),
      body: ListView(children: [
        Container(
          child: AspectRatio(
            // AspectRatio for Video player ui
            aspectRatio: 16 / 9,
            child: Stack(children: [
              Container(
                color: Colors.grey,
              ),
              Center(
                child: Icon(
                  Icons.pause_circle,
                  size: 60,
                ),
              ),
              Positioned(
                bottom: 10,
                left: 0,
                right: 0,
                child: const LinearProgressIndicator(
                  value: 0.5,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
                ),
              )
            ]),
          ),
        ),
        ...List.generate(
            5,
            (index) => ListTile(
                  leading: Icon(Icons.pause_circle),
                  title: Text('AspectRatio widget | Flutter'),
                  subtitle: Text('20 Fab 2025'),
                  trailing: Icon(Icons.more_vert),
                ))
      ]),
    );
  }
}
