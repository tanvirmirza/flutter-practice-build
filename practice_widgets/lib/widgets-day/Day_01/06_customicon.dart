import 'package:flutter/material.dart';

class KCustomIcon extends StatelessWidget {
  const KCustomIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Custom Icon")),
      body: Center(
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                'lib/assets/icons/001-user.png',
              ),
              Image.asset("lib/assets/icons/002-mail.png"),
              Image.asset("lib/assets/icons/003-home.png"),
              Image.asset("lib/assets/icons/004-mail-inbox-app.png"),
              Image.asset("lib/assets/icons/005-shopping.png"),
              Image.asset("lib/assets/icons/006-house.png")
            ]),
      ),
    );
  }
}
