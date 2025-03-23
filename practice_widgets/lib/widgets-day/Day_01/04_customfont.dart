import 'package:flutter/material.dart';

class KCustomFontText extends StatelessWidget {
  const KCustomFontText({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Text("In the quiet of night, stars whispered ancient tales.",
            style: TextStyle(
              fontFamily: 'JosefinSans',
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Colors.black,
            )),
        SizedBox(
          height: 10,
        ),
        Text("Raindrops danced, leaving shimmering tales on old windowpanes.",
            style: TextStyle(
                fontFamily: 'JosefinSans',
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontSize: 30,
                color: Colors.black)),

                SelectableText("Select me to copy",)
      ],
    );
  }
}
