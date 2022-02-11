import 'package:cracker_book_demo/app.dart';
import 'package:cracker_book_demo/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cracker Book',
      theme: themeData(context),
      home: const App(),
    );
  }
}
