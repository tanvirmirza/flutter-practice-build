import 'package:flutter/material.dart';

class KTextField extends StatefulWidget {
  const KTextField({super.key});

  @override
  State<KTextField> createState() => _KTextFieldState();
}

class _KTextFieldState extends State<KTextField> {
  final textController = TextEditingController();
  String text = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text.toUpperCase(),
          style: TextStyle(fontSize: 30),
        ),
        SizedBox(
          height: 50,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: textController,
            autofocus: true,
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
              hintText: 'Try Something...',
              suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      text = textController.text;
                    });
                  },
                  icon: Icon(
                    Icons.check_circle_outline,
                    color: Colors.indigo,
                  )),
              prefixIcon: Icon(Icons.text_fields),
            ),
          ),
        ),
      ],
    ));
  }
}
