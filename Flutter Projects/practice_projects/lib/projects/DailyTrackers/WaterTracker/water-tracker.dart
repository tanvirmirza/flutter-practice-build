import 'package:flutter/material.dart';

import 'button.dart';

class WaterTracker extends StatefulWidget {
  const WaterTracker({super.key});

  @override
  State<WaterTracker> createState() => _WaterTrackerState();
}

class _WaterTrackerState extends State<WaterTracker> {
  double currentinTake = 0.0;
  final int goal = 2000;

  void _waterAdd(int amount) {
    setState(() {
      if (currentinTake < goal) {
        currentinTake += amount.clamp(0, goal);
      }
    });
  }

  void _resetWater() {
    setState(() {
      currentinTake = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    double progress = (currentinTake / goal).clamp(0.0, 1.0);

    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        title: Text('Water Tracker'),
        backgroundColor: Colors.deepPurple.shade200,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 100,
              width: 180,
              child: Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Today's InTake",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '$currentinTake ml',
                      style: TextStyle(
                          fontSize: 28,
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                    height: 150,
                    width: 150,
                    child: CircularProgressIndicator(
                      strokeWidth: 10,
                      value: progress,
                      valueColor:
                          AlwaysStoppedAnimation<Color>(Colors.blueAccent),
                      backgroundColor: Colors.grey.shade300,
                    )),
                Text('${(progress * 100).toInt()} %',
                    style:
                        TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            CustomButton(
              onPressed: () {
                _waterAdd(200);
              },
              text: '+ 200 ml',
              icon: Icons.local_drink,
              bgColor: Colors.blueAccent,
            ),
            SizedBox(
              height: 30,
            ),
            CustomButton(
              onPressed: () {
                _waterAdd(500);
              },
              text: '+ 500 ml',
              icon: Icons.water_drop,
              bgColor: Colors.blueAccent,
            ),
            SizedBox(
              height: 30,
            ),
            CustomButton(
              onPressed: () {
                _waterAdd(1000);
              },
              text: '+ 1000 ml',
              icon: Icons.local_cafe,
              bgColor: Colors.blueAccent,
            ),
            SizedBox(
              height: 50,
            ),
            CustomButton(
              onPressed: () {
                _resetWater();
              },
              text: 'Reset',
              icon: Icons.rotate_left,
              bgColor: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
