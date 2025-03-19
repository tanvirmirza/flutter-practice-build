import 'package:flutter/material.dart';

import '../Day_04/10_reuseble-custom-widget.dart';

class KBottomSheet extends StatelessWidget {
  const KBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BottomSheet'),
      ),
      body: Center(
        child: CustomButton(
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return Container(
                    height: 200,
                    margin: EdgeInsets.all(10),
                    width: double.infinity,
                    child: Text.rich(
                      TextSpan(
                        text: 'Address: ',
                        children: <TextSpan>[
                          TextSpan(text: "\nHouse 1, Road 2, Block A, "),
                          TextSpan(text: "\nFeni, Bangladesh"),
                        ],
                        style: TextStyle(fontSize: 20, color: Colors.grey[300]),
                      ),
                    ),
                  );
                });
          },
          text: 'Show Bottom Sheet',
          icon: Icons.arrow_drop_down_circle,
        ),
      ),
    );
  }
}
