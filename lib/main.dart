import 'package:custom_scroll_view/screens/homework/custom_sliver_screen.dart';
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
      debugShowCheckedModeBanner: false,
      title: 'Custom sliver',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CustomSliverScreen(),
    );
  }
}
