import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class KLinearProgress extends StatelessWidget {
 const KLinearProgress({super.key});


  @override
  Widget build(BuildContext context) {
    int value = 70;
    double percent = value * (1 / 100);
    return Scaffold(
      appBar: AppBar(title: Text('Linear Progress')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(width: 350, child: LinearProgressIndicator()),
            SizedBox(
              height: 100,
            ),
            Row(
              children: [
                SizedBox(
                  width: 300,
                  height: 10,
                  child: LinearProgressIndicator(
                    value: percent,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  '$value%',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}



//  SizedBox(
//                 height: 180,
//                 width: double.infinity,
//                 child: Card(
//                   color: Colors.white,
//                   child: Padding(
//                       padding: const EdgeInsets.all(8),
//                       child: Center(
//                         child: SizedBox(
//                             height: 5, child: LinearProgressIndicator()),
//                       )),
//                 )),
//             SizedBox(
//               height: 50,
//             ),
//             Expanded(
//               child: Row(
//                 children: [
//                   SizedBox(
//                     height: 10,
//                     width: double.infinity,
//                     child: LinearProgressIndicator(
//                       value: percent,
//                     ),
//                   ),
//                   SizedBox(
//                     width: 5,
//                   ),
//                   Text('$percent,%')
//                 ],
//               ),
//             ),
          
