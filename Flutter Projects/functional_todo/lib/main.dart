import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'FunctionalTodo/funtional_todo.dart';
import 'provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(create: (context) =>  TodoProvider(), child: const MyApp(),)
    
  //   MultiProvider(
  //   providers: [
  //     ChangeNotifierProvider(create:(_) => TodoProvider()),
  // ], child: const MyApp(),)
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Functional Todo',
       debugShowCheckedModeBanner: false,
       
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF1A089F)),
        useMaterial3: true,
      ),
      home: const FunctionalTodo(),
    );
  }
}

