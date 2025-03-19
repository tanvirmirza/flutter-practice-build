import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  List<String> taskes = ['Read Book', 'Cook Food', 'Play Game'];

  TextEditingController _textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Todo Page"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                controller: _textController,
                decoration: InputDecoration(
                  hintText: "Enter your task",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      if (_textController.text.isNotEmpty) {
                        setState(() {
                          taskes.add(_textController.text);
                          _textController.clear();
                        });
                      }
                    },
                    icon: Icon(Icons.add),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: taskes.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(
                          taskes[index],
                          style: TextStyle(fontWeight: FontWeight.w300),
                        ),
                        trailing: IconButton(
                          onPressed: () {
                            setState(() {
                              taskes.removeAt(index);
                            });
                          },
                          icon: Icon(
                            Icons.delete,
                            color: Colors.red,
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ));
  }
}
