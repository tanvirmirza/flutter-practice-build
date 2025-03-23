import 'package:flutter/material.dart';

class KPassData extends StatefulWidget {
  const KPassData({super.key});

  @override
  State<KPassData> createState() => _KPassDataState();
}

class _KPassDataState extends State<KPassData> {
  final TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pass Data'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: textController,
            decoration: InputDecoration(
              hintText: 'Typing Somthing...',
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
              prefixIcon: Icon(Icons.text_fields),
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ShowData(
                                  text: textController.text,
                                )));
                  });
                },
                icon: Icon(
                  Icons.navigate_next,
                  color: Colors.indigo,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ShowData extends StatefulWidget {
  final String text;
  const ShowData({required this.text, super.key});

  @override
  State<ShowData> createState() => _ShowDataState();
}

class _ShowDataState extends State<ShowData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          setState(() {
            Navigator.pop(context);
          });
        },
        label: Text('Back'),
        icon: Icon(Icons.navigate_before),
      ),
      appBar: AppBar(
        title: Text('Data Page'),
      ),
      body: Center(
        child: Text(
          widget.text,
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
