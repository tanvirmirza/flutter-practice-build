import 'package:flutter/material.dart';

import 'component/mybutton.dart';
import 'component/myfield.dart';
import 'component/squaretile.dart';

class LoginUI extends StatefulWidget {
  const LoginUI({super.key});

  @override
  State<LoginUI> createState() => _LoginUIState();
}

class _LoginUIState extends State<LoginUI> {
  var _controllerName = TextEditingController();
  var _controllerMail = TextEditingController();
  var _controllerPass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();

    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 80,
                  ),
                  Icon(
                    Icons.lock,
                    size: 80,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    "Welcome back you've been missed!",
                    style: TextStyle(fontSize: 15),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  MyField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'please enter name';
                      }
                      return null;
                    },
                    controller: _controllerName,
                    hintText: "Username",
                    obscureText: false,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  MyField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'please enter email';
                      }
                      return null;
                    },
                    controller: _controllerMail,
                    hintText: "Email",
                    obscureText: false,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  MyField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'please enter password';
                      }
                      return null;
                    },
                    controller: _controllerPass,
                    hintText: "Password",
                    obscureText: true,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        // SizedBox(
                        //   width: 370,
                        // ),
                        Text(
                          'Forgot Password?',
                          style: TextStyle(color: Colors.grey[600]),
                        )
                      ],
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                      child: MyButton(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => DetailPage(
                                        name: _controllerName.text,
                                        email: _controllerMail.text,
                                      ))));
                        },
                      )),
                  SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Row(children: [
                      Expanded(
                          child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      )),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text("Or continue with"),
                      ),
                      Expanded(
                          child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      )),
                    ]),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SquareTile(
                          imagePath:
                              'https://static-00.iconduck.com/assets.00/google-icon-512x512-tqc9el3r.png'),
                      SizedBox(
                        width: 25,
                      ),
                      SquareTile(
                        imagePath:
                            'https://t4.ftcdn.net/jpg/05/32/20/03/360_F_532200355_odKN9Ou3WB6iHWJTFIElFtJbTuzJspY6.jpg',
                      )
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Not a member?  ",
                      ),
                      Text(
                        "Register now",
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ],
              )),
        ),
      ),
    );
  }
}

class DetailPage extends StatefulWidget {
  final name;
  final email;
  DetailPage({Key? key, required this.name, this.email}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Detail")),
      body: Center(
          child: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          CircleAvatar(
              radius: 50,
              backgroundColor: Colors.black,
              child: Text(
                '${widget.name[0].toUpperCase()}',
                style: TextStyle(color: Colors.white, fontSize: 50),
              )),
          Text('${widget.name}',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          Text('${widget.email}', style: TextStyle(fontSize: 20)),
        ],
      )),
    );
  }
}
