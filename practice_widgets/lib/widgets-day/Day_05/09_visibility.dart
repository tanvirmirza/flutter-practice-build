// import 'package:flutter/material.dart';

// class VisibilityW extends StatefulWidget {
//   const VisibilityW({super.key});

//   @override
//   State<VisibilityW> createState() => _VisibilityWState();
// }

// class _VisibilityWState extends State<VisibilityW> {
//   bool visible = true;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Visibility")),
//       body: Center(
//           child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Visibility(
//               visible: visible,
//               child: visible
//                   ? Container(
//                       alignment: Alignment.center,
//                       height: 100,
//                       width: 200,
//                       color: Colors.blueAccent[300],
//                       child: Text(
//                         "Visibility",
//                         style: TextStyle(color: Colors.blue[100], fontSize: 40),
//                       ),
//                     )
//                   : Container(
//                       height: 100,
//                       width: 200,
//                       color: Colors.black,
//                       child: Text("name"),
//                     )),
//           TextButton(
//               onPressed: () {
//                 setState(() {
//                   visible = !visible;
//                 });
//               },
//               child: visible ? Text("Hide") : Text("Show")),
//         ],
//       )),
//     );
//   }
// }
