import 'package:flutter/material.dart';

class RMediaQuary extends StatelessWidget {
  const RMediaQuary({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    bool isMobile = screenWidth < 600;
    bool isDesktop = screenWidth >= 600;

    return Scaffold(
        drawer: isMobile ? Drawer() : null,
        appBar: AppBar(title: isMobile ? Text("Mobile") : Text("Desktop")),
        body: Center(
          child: isMobile
              ? Container(
                  color: Colors.deepPurple.shade300,
                  height: screenHeight * 0.4,
                  width: screenWidth * 0.7,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Mobile height: " + screenHeight.toString(),
                        style: TextStyle(color: Colors.white),
                      ),
                      Text("Mobile width: " + screenWidth.toString(),
                          style: TextStyle(color: Colors.white)),
                    ],
                  ),
                )
              : Container(
                  color: Colors.purple.shade300,
                  height: screenHeight * 0.4,
                  width: screenWidth * 0.7,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Desktop height: " + screenHeight.toString()),
                      Text("Desktop width: " + screenWidth.toString()),
                    ],
                  ),
                ),
        )
        //  Padding(
        //   padding: const EdgeInsets.all(8.0),
        //   child:
        //   Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //     crossAxisAlignment: CrossAxisAlignment.end,
        //     children: [
        //       Container(
        //         width: _width,
        //         height: _height,
        //         decoration: BoxDecoration(
        //             color: Colors.green, borderRadius: BorderRadius.circular(10)),
        //         child: Center(child: Text("Increment")),
        //       ),
        //       Container(
        //         width: _width,
        //         height: _height,
        //         decoration: BoxDecoration(
        //             color: Colors.blueAccent,
        //             borderRadius: BorderRadius.circular(10)),
        //         child: Center(child: Text("Decrement")),
        //       ),
        //     ],
        //   ),
        // ),
        );
  }
}
