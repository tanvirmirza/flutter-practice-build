import 'package:flutter/material.dart';

class KButtons extends StatefulWidget {
  const KButtons({super.key});

  @override
  State<KButtons> createState() => _KButtonsState();
}

class _KButtonsState extends State<KButtons> {
  bool clicked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Buttons"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //Elevated Button

            ElevatedButton(
              onPressed: () {},
              child: Text(
                "Elevated Button",
                style: TextStyle(fontSize: 20),
              ),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),

            //Icon Button

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      clicked = !clicked;
                    });
                  },
                  icon: clicked
                      ? Icon(Icons.favorite_border)
                      : Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                  splashRadius: 15,
                  splashColor: Colors.red[100],
                ),
                Text("Icon Button")
              ],
            ),

            //Outlined Button

            OutlinedButton(
              style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.purple[300],
                  surfaceTintColor: Colors.black),
              onPressed: () {},
              child: const Text(
                'Outlined Button',
                style: TextStyle(fontSize: 25, color: Colors.black),
              ),
            ),

            //PopupMenue Button

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PopupMenuButton(
                    splashRadius: 15,
                    itemBuilder: ((context) => [
                          PopupMenuItem(
                            child: Text("Item 1"),
                            value: 1,
                          ),
                          PopupMenuItem(
                            child: Text("Item 2"),
                            value: 2,
                          ),
                          PopupMenuItem(
                            child: Text("Item 3"),
                            value: 3,
                          ),
                        ])),
                Text("PopupMenueButton")
              ],
            )
          ],
        ),
      ),
    );
  }
}
