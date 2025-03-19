import 'package:flutter/material.dart';

class KTabbarView extends StatefulWidget {
  const KTabbarView({super.key});

  @override
  State<KTabbarView> createState() => _KTabbarViewState();
}

class _KTabbarViewState extends State<KTabbarView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Builder(
        builder: (context) {
          debugPrint(DefaultTabController.of(context).length.toString());

          return Scaffold(
            appBar: AppBar(
              title: const Text('TabBar'),
              bottom: const TabBar(
                isScrollable: true,
                indicatorWeight: 4,
                unselectedLabelColor: Colors.blueGrey,
                labelColor: Colors.blue,
                labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                tabs: [
                  Tab(text: 'Home'),
                  Tab(text: 'Profile'),
                  Tab(text: 'Settings'),
                  Tab(text: 'Chats'),
                  Tab(text: 'Status'),
                  Tab(text: 'Camera'),
                ],
              ),
            ),
            body: const SafeArea(
              child: TabBarView(
                children: [
                  Center(child: Text("Home")),
                  Center(child: Text("Profile")),
                  Center(child: Text("Settings")),
                  Center(child: Text("Chats")),
                  Center(child: Text("Status")),
                  Center(child: Text("Camera")),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

//or Try this

// import 'dart:js_util';

// import 'package:flutter/material.dart';

// class TabBarW extends StatelessWidget {
//   const TabBarW({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 3,
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text("TabBar"),
//           bottom:
//               TabBar(indicatorColor: Colors.white, indicatorWeight: 10, tabs: [
//             Tab(
//               icon: Icon(Icons.home),
//               text: 'Home',
//             ),
//             Tab(
//               icon: Icon(Icons.add_ic_call),
//               text: 'Call',
//             ),
//             Tab(
//               icon: Icon(Icons.adb),
//               text: 'Android',
//             )
//           ]),
//         ),
//         body: TabBarView(children: [
//           Center(
//             child: Text("Home"),
//           ),
//           Center(child: Text("Call")),
//           Center(
//             child: Text("Android"),
//           )
//         ]),
//       ),
//     );
//   }
// }
