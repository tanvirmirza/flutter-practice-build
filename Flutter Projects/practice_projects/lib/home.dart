import 'package:flutter/material.dart';
import 'projects/Calculators/BMICalculator/input_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        
        title: "PRACTICE PROJECTS",
        theme: ThemeData(
          appBarTheme: AppBarTheme(
              centerTitle: true,
              backgroundColor: Colors.deepPurple.shade200,
              titleSpacing: 5,
              titleTextStyle: TextStyle(
                  color: Colors.grey.shade800,
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
        ),
        home: const Scaffold(
          body: InputPage(),
        ));
  }
}
