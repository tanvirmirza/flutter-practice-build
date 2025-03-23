import 'package:flutter/material.dart';

class RFractionallySizedbox extends StatelessWidget {
  const RFractionallySizedbox({super.key});

  @override
  Widget build(BuildContext context) {
    bool widthFactor = MediaQuery.of(context).size.width > 600;
    bool heightFactor = MediaQuery.of(context).size.height > 400;

    return Scaffold(
      appBar: AppBar(
        title: const Text('FractionallySizedBox'),
      ),
      body: Center(
        child: FractionallySizedBox(
          widthFactor: widthFactor ? 0.5 : 0.8,
          heightFactor: heightFactor ? 0.3 : 0.5,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.deepPurple[200],
              borderRadius: BorderRadius.circular(15),
            ),
            child: Center(
              child: Text(
                'Width: ${widthFactor ? 50 : 80}%, Height: ${heightFactor ? 30 : 50}%',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
