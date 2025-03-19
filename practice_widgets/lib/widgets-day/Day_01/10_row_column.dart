import 'package:flutter/material.dart';

class KRowColumn extends StatelessWidget {
  const KRowColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Row Column",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          
          children: [
            ...List.generate(
                3,
                (index) => Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: Container(
                        height: 80,
                        width: 80,
                        color: Colors.green,
                      ),
                    )),

               Row(
                children: [
                  ...List.generate(
                3,
                (index) => Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: Container(
                        height: 80,
                        width: 80,
                        color: Colors.green,
                      ),
                    )),
                ],
               )     
          ],
        ),
      ),
    );
  }
}
