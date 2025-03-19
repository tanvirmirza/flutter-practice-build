import 'package:flutter/material.dart';

class KContainer extends StatelessWidget {
  const KContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("CONTAINER"), titleSpacing: 50,),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xfff5f7fa), Color(0xffc3cfe2)],
                begin: Alignment.topRight,
                end: Alignment.bottomRight)),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  child: Text("PUSH", style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold, color: Colors.grey.shade800)),
                  alignment: Alignment.center,
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(200),
                    border: Border.all(
                        color: Colors.white,
                        width: 0.7,
                        style: BorderStyle.solid),
                    color: Colors.grey[300],
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade500,
                          blurRadius: 15.0,
                          offset: Offset(4.0, 4.0),
                          spreadRadius: 1.0),
                      BoxShadow(
                          color: Colors.white,
                          blurRadius: 15.0,
                          offset: Offset(-4.0, -4.0),
                          spreadRadius: 1.0)
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
