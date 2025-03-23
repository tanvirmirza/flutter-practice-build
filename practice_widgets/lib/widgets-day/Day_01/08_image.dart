import 'package:flutter/material.dart';

class KImage extends StatelessWidget {
  const KImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Image Widget")),
      body: Center(
          child: ListView(
        children: [
          NetworkImage(),
          AssetImage(),
        ],
      )),
    );
  }
}

Widget NetworkImage() {
  return Image.network(
      'https://imgs.search.brave.com/aOH0aFSX5GcWlAIXu2qH0wjWv2y0_DIoQcg8SA7_1XQ/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9zdGF0/aWMuZGhpd2lzZS5j/b20vRGhpV2lzZS1v/bmUvSGVhZGVyL0Zs/dXR0ZXIuc3ZnP3c9/Mzg0MCZxPTc1');
}

Widget AssetImage() {
  return Image.asset('lib/assets/images/mtpro.png', color: Colors.grey.shade500,);
}
