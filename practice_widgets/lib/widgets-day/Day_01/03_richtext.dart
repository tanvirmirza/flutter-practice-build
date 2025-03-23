import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class KRichText extends StatelessWidget {
  const KRichText({super.key});

  @override
  Widget build(BuildContext context) {
    var _title = "RichText";
    return Scaffold(
      appBar: AppBar(title: Text(_title)),
      body: ListView(
        padding: EdgeInsets.all(32),
        children: [
          buildGretting(),
          SizedBox(
            height: 10,
          ),
          buildName(),
          SizedBox(
            height: 10,
          ),
          buildNumber(),
          SizedBox(
            height: 10,
          ),
          buildEmail(),
          SizedBox(
            height: 10,
          ),
          buildAddress(),
          SizedBox(
            height: 10,
          ),
          buildSelectableText(),
        ],
      ),
    );
  }
}

Widget buildGretting() => Text.rich(
      style: TextStyle(fontSize: 30),
      TextSpan(text: '\u{1F44B} Hi,', // 👋
          children: [
            TextSpan(text: " Welcome!"),
          ]),
    );

Widget buildName() => Text.rich(
      style: TextStyle(fontSize: 30),
      TextSpan(text: "Name: ", children: [
        TextSpan(text: "Mirza Tanvir Mahtab"),
      ]),
    );

Widget buildNumber() => RichText(
      text: TextSpan(style: TextStyle(fontSize: 30), children: [
        TextSpan(text: "Number: "),
        TextSpan(text: "01878404012")
      ]),
    );

Widget buildEmail() => Text.rich(
      style: TextStyle(fontSize: 30),
      TextSpan(text: "Email: ", children: [
        TextSpan(
          text: "mirzatanvir@gmail.com",
          recognizer: TapGestureRecognizer()
            ..onTap = () {
              print("clicked");
            },
        ),
      ]),
    );

Widget buildAddress() => Text.rich(
      style: TextStyle(fontSize: 30),
      TextSpan(text: 'Address: ', // 👋
          children: [
            TextSpan(text: "House 1, Road 2, Block A, "),
            TextSpan(text: "Feni, Bangladesh"),
          ]),

          
    );

    Widget buildSelectableText() => SelectableText("\u{1F44B} Select me to copy. In Flutter, the SelectableText widget is used to display a string of text that can be selected and copied by the user. This widget is similar to the Text widget but includes additional functionality for text selection and copying. Here are some key points about SelectableText:", style: TextStyle(fontSize: 20),);
