import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLauncher extends StatelessWidget {
  const UrlLauncher({super.key});

  @override
  Widget build(BuildContext context) {
    final Uri _url = Uri.parse('https://github.com/tanvirmirza');

    return Scaffold(
      appBar: AppBar(title: Text('Url Launcher')),
      body: Center(
          child: GestureDetector(
        child: Image.network(
          'https://imgs.search.brave.com/6MgsYXws0MojRCgw42PgQqvzTVbBwjsoi-lL2LJdU5w/rs:fit:560:320:1/g:ce/aHR0cHM6Ly91cGxv/YWQud2lraW1lZGlh/Lm9yZy93aWtpcGVk/aWEvY29tbW9ucy90/aHVtYi85LzkxL09j/dGljb25zLW1hcmst/Z2l0aHViLnN2Zy82/NDBweC1PY3RpY29u/cy1tYXJrLWdpdGh1/Yi5zdmcucG5n',
          width: 50,
        ),
        onTap: () async {
          if (await canLaunchUrl(_url)) 
          {
            await launchUrl(_url);
            
            true;
            
            true;
          } else {
            throw 'Could not launch $_url';
          }
        },
      )),
    );
  }
}
