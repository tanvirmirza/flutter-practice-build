import 'package:flutter/material.dart';

class RLayoutBuilder extends StatefulWidget {
  const RLayoutBuilder({super.key});

  @override
  State<RLayoutBuilder> createState() => _RLayoutBuilderState();
}

class _RLayoutBuilderState extends State<RLayoutBuilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Layout Builder'),
        ),
        body: LayoutBuilder(builder: (context, constraints) {
          if (constraints.maxWidth > 600) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.deepPurple.shade200,
                    radius: 100,
                    child: Text(
                      'MT',
                      style: TextStyle(fontSize: 60),
                    ),
                    foregroundColor: Colors.grey.shade100,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Mirza Tanvir',
                          style: TextStyle(
                              fontSize: 45, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Software Engineer',
                          style: TextStyle(fontSize: 30),
                        ),
                        Text(
                          'Bangldesh',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w100),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            );
          } else {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.deepPurple.shade200,
                      radius: 70,
                      child: Text(
                        'MT',
                        style: TextStyle(fontSize: 30),
                      ),
                      foregroundColor: Colors.grey.shade100,
                    ),
                    Text(
                      'Mirza Tanvir Mahtab',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Software Engineer',
                      style: TextStyle(fontSize: 25),
                    ),
                    Text(
                      'Bangldesh',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w100),
                    )
                  ],
                ),
              ),
            );
          }
        }));
  }
}
