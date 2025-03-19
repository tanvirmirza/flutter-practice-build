import 'package:flutter/material.dart';

class KCircleProgress extends StatelessWidget {
  const KCircleProgress({super.key});

  @override
  Widget build(BuildContext context) {
    int value = 70;
    double percent = value * (1 / 100);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Circle Progress'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
                height: 150,
                width: 150,
                child: Card(
                  color: Colors.white,
                  child: Center(
                    child: SizedBox(
                        height: 50,
                        width: 50,
                        child: CircularProgressIndicator()),
                  ),
                )),
            const SizedBox(
              height: 100,
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                    height: 150,
                    width: 150,
                    child: CircularProgressIndicator(
                      strokeWidth: 10,
                      value: percent,
                    )),
                Text('$value%',
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
