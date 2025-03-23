import 'package:flutter/material.dart';

import 'SignIn.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _obscured = false;
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: new EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            Text(
              "Hi! Welcome Back",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  fontFamily: "Poppins"),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Create an account",
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.black87,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 45,
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              child: TextField(
                style: TextStyle(color: Colors.black45, fontFamily: "Poppins"),
                autofocus: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                  hintText: 'Full Name',
                  hintStyle:
                      TextStyle(color: Colors.grey, fontFamily: "Poppins"),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              child: TextField(
                style: TextStyle(color: Colors.grey, fontFamily: "Poppins"),
                autofocus: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                  hintText: 'Email',
                  hintStyle:
                      TextStyle(color: Colors.grey, fontFamily: "Poppins"),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              child: TextField(
                autofocus: true,
                style: TextStyle(color: Colors.grey, fontFamily: "Poppins"),
                obscureText: !this._obscured,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.vpn_key_rounded,
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscured
                          ? Icons.visibility_rounded
                          : Icons.visibility_off_rounded,
                      size: 24,
                    ),
                    onPressed: () {
                      setState(() => _obscured = !_obscured);
                    },
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                  hintText: 'Password',
                  hintStyle:
                      TextStyle(color: Colors.grey, fontFamily: "Poppins"),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              child: TextField(
                autofocus: true,
                style: TextStyle(color: Colors.black, fontFamily: "Poppins"),
                obscureText: !this._obscured,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.vpn_key_rounded,
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscured
                          ? Icons.visibility_rounded
                          : Icons.visibility_off_rounded,
                      size: 24,
                    ),
                    onPressed: () {
                      setState(() => _obscured = !_obscured);
                    },
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                  hintText: 'Re-Type Password',
                  hintStyle:
                      TextStyle(color: Colors.grey, fontFamily: "Poppins"),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Checkbox(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4)),
                  side: BorderSide(
                    color: Colors.grey,
                    width: 2,
                  ),
                  value: this.value,
                  onChanged: (bool? value) {
                    setState(() {
                      this.value = value!;
                    });
                  },
                ),
                Text(
                  ' I accepted',
                  style: TextStyle(
                      fontFamily: "Poppins",
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  " Terms & Privacy Policy",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: Size.fromHeight(50),
                  maximumSize: Size.fromWidth(500),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(35))),
                ),
                onPressed: () {},
                child: Text('Continue',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      fontFamily: "Poppins",
                    ))),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: TextStyle(
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Poppins"),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignIn(),
                        ),
                      );
                    },
                    child: Text(
                      " Sign In",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontFamily: "Poppins"),
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
