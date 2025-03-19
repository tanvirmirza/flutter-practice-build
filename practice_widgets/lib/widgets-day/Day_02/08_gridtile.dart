import 'package:flutter/material.dart';

class KGridTile extends StatelessWidget {
  const KGridTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('GridTile')),
      body: Center(
          child: SizedBox(
        height: 300,
        width: 300,
        child: GridTile(
          child: Image.asset(
            'lib/assets/images/flower.png',
            fit: BoxFit.cover,
          ),
          header: Container(
            color: Colors.black38,
            child: Center(
                child: Text(
              'This is Flower',
              style: TextStyle(color: Colors.white),
            )),
            height: 40,
          ),
          footer: Container(
              child: Row(
                children: [
                  Icon(
                    Icons.favorite,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.chat_bubble,
                    color: Colors.white,
                  ),
                ],
              ),
              height: 40,
              color: Colors.black38),
        ),
      )),
    );
  }
}
