import 'package:flutter/material.dart';

class KShowDialog extends StatelessWidget {
  const KShowDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Show Dialog'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton.icon(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) => Dialog(
                            child: Container(
                              alignment: Alignment.center,
                              height: 150,
                              child: CircularProgressIndicator(),
                            ),
                            // Text('Progress..!',style: TextStyle(fontSize: 20),),
                          ));
                },
                icon: Icon(Icons.refresh),
                label: Text('Dialog')),
            SizedBox(
              height: 20,
            ),
            OutlinedButton.icon(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            title: Text('Warning!'),
                            content: Text('Are you sure you want to delete?'),
                            actions: [
                              OutlinedButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text("Yes"),
                              ),
                              OutlinedButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text("No"),
                              )
                            ],
                          ));
                },
                icon: Icon(Icons.error),
                label: Text('Alert Dialog')),
            SizedBox(
              height: 20,
            ),
            OutlinedButton.icon(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) => SimpleDialog(
                            title: Text('What is your country?'),
                            children: [
                              SimpleDialogOption(
                                child: Text('1. Bangladesh'),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                              SimpleDialogOption(
                                child: Text('2. Iran'),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                              SimpleDialogOption(
                                child: Text('3. Philistine'),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ],
                          ));
                },
                icon: Icon(Icons.list_alt_sharp),
                label: Text('Simple Dialog')),
          ],
        ),
      ),
    );
  }
}
