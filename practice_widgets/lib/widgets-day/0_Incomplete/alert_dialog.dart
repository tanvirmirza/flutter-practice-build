import 'package:flutter/material.dart';

class AlertDialogW extends StatelessWidget {
  const AlertDialogW({super.key});

  @override
  Widget build(BuildContext context) {
    double n = 5 / 2;
    return Scaffold(
      appBar: AppBar(title: Text('Alert Dialog')),
      body: Center(
          child: OutlinedButton(
        child: Text('Alert Dialog '),
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text('Alert!'),
                  content: Text('Are you sure you want to delete?'),
                  actions: <Widget>[
                    OutlinedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text('Deleted this file!'),
                            action: SnackBarAction(
                              label: 'Undo',
                              onPressed: () {},
                            )));
                      },
                      child: Text('Yes'),
                    ),
                    OutlinedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text("No"),
                    )
                  ],
                );
              });
        },
      )),
    );
  }
}
