import 'package:flutter/material.dart';

class KClip extends StatelessWidget {
  const KClip({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Clip Widget")
        ),
      body: Center(
        child: Column(
          children: [
            clipRRect(),
            SizedBox(height: 20,),
            clipRect()
          ],
          )),
    );
  }
}

Widget clipRRect(){
 return ClipRRect(
  borderRadius: BorderRadius.circular(50),
   child: Image.network('https://picsum.photos/250?image=9')
 );
}

Widget clipRect(){
 return ClipRect(
  child: Align(
    alignment: Alignment.center,
    heightFactor: 0.3,
    child: Image.network('https://picsum.photos/250?image=9'),),
 );
}
