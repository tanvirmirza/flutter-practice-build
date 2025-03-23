import 'package:flutter/material.dart';

class KSnackBar extends StatelessWidget {
  const KSnackBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SnackBar'),
      ),
      body: Center(
        child: OutlinedButton.icon(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                
                content: Text( 'Video deleted from downloads',
              style: TextStyle(fontSize: 18)),
                duration: Duration(seconds: 2),
                action: SnackBarAction(
                  label: 'Undo',
                  onPressed: () {},
                ),
                 shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            backgroundColor: Colors.green[300],
              ));
            },
            icon: Icon(Icons.checklist),
            label: Text('SnackBar')),
      ),
    );
  }
}
