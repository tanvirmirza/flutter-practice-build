import 'package:flutter/material.dart';

//GridViewBuilder
class KGridViewBuilder extends StatelessWidget {
  const KGridViewBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('GridView Builder')),
        body: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 9,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
            ),
            itemBuilder: (context, index) {
              return Container(
                color: Colors.blue[100 * (index % 9)],
                child: Center(
                  child: Text(
                    'Item $index',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              );
            }));
  }
}
