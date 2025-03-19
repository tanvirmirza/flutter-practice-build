import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class KFAIcon extends StatelessWidget {
  const KFAIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Font Awesome Icon")),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.person, size: 50, color: Colors.blue,),
              FaIcon(FontAwesomeIcons.fan, size: 50, color: Colors.red),
              FaIcon(
                FontAwesomeIcons.facebook,
                color: Colors.blue,
                size: 50,
              ),
              FaIcon(
                FontAwesomeIcons.youtube,
                color: Colors.red,
                size: 50,
              ),
              FaIcon(
                FontAwesomeIcons.instagram,
                color: Colors.pinkAccent,
                size: 50,
              ),
              FaIcon(
                FontAwesomeIcons.linkedin,
                color: Colors.blue,
                size: 50,
              ),
            ],
          ),
        ));
  }
}
