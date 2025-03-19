import 'package:flutter/material.dart';

import 'SignUp.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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
              "Log in to your account",
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
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
                style: TextStyle(color: Colors.black, fontFamily: "Poppins"),
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
                  hintText: 'Password',
                  hintStyle:
                      TextStyle(color: Colors.grey, fontFamily: "Poppins"),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Column(
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text('Forget Password?',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontFamily: "Poppins")),
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
                child: Text('Sign In',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      fontFamily: "Poppins",
                    ))),
            SizedBox(
              height: 30,
            ),
            Row(children: <Widget>[
              Expanded(child: Divider()),
              Text(
                "      Or      ",
                style: TextStyle(fontFamily: "Poppins"),
              ),
              Expanded(child: Divider()),
            ]),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  fixedSize: Size.fromHeight(50),
                  maximumSize: Size.fromWidth(500),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(35))),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage("assets/icon/facebook.png"),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Continue with Facebook",
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        fontFamily: "Poppins",
                      ),
                    ),
                  ],
                )),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  fixedSize: Size.fromHeight(50),
                  maximumSize: Size.fromWidth(500),
                  shape: RoundedRectangleBorder(
                      // side: BorderSide(
                      //   color: Colors.grey,
                      // ),
                      borderRadius: BorderRadius.all(Radius.circular(35))),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage("assets/icon/google.png"),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Continue with Google",
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          fontFamily: "Poppins"),
                    ),
                  ],
                )),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
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
                          builder: (context) => SignUp(),
                        ),
                      );
                    },
                    child: Text(
                      "Sign Up",
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
