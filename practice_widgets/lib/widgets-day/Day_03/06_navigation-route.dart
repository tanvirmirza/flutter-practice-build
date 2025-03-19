import 'package:flutter/material.dart';

class KNavigationPage extends StatefulWidget {
  const KNavigationPage({super.key});

  @override
  State<KNavigationPage> createState() => _KNavigationPageState();
}

class _KNavigationPageState extends State<KNavigationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
          "Navigation",
        )),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OutlinedButton(
                  onPressed: () {
                    setState(() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => kTwoPage())));
                    });
                  },
                  child: Text("Go To Next")),
              SizedBox(
                height: 20,
              ),
              OutlinedButton(
                  onPressed: () {
                    setState(() {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => kLastPage())));
                    });
                  },
                  child: Text("Go To Last"))
            ],
          ),
        ));
  }
}

class kTwoPage extends StatefulWidget {
  const kTwoPage({super.key});

  @override
  State<kTwoPage> createState() => _kTwoPageState();
}

class _kTwoPageState extends State<kTwoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
          "New Two",
        )),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OutlinedButton(
                  onPressed: () {
                    setState(() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => kLastPage())));
                    });
                  },
                  child: Text("Go To Next")),
              SizedBox(
                height: 20,
              ),
              OutlinedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Back One Step"))
            ],
          ),
        ));
  }
}

class kLastPage extends StatefulWidget {
  const kLastPage({super.key});

  @override
  State<kLastPage> createState() => _kLastPageState();
}

class _kLastPageState extends State<kLastPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
          "New Three",
        )),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OutlinedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Back One Step")),
              SizedBox(
                height: 20,
              ),
              OutlinedButton(
                  onPressed: () {
                    Navigator.popUntil(context, (route) => route.isFirst);
                  },
                  child: Text("Back To First")),
            ],
          ),
        ));
  }
}
